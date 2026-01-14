#NoEnv
#InstallKeybdHook
#UseHook
SendMode Input
SetBatchLines -1

; ===== チューニング =====
baseStep    := 8
accelFactor := 2
maxStep     := 120
shiftBoost  := 1.6
wheelSpeed  := 1
; =======================

stepU := baseStep
stepD := baseStep
stepL := baseStep
stepR := baseStep

; ScrLkはOSに渡さない（ScrollLockの通常動作を封じる）
$*ScrollLock::return

$*ScrollLock up::
    Gosub, ResetU
    Gosub, ResetD
    Gosub, ResetL
    Gosub, ResetR
return

; ---- 方向キー：押下/リピートのたびに状態合成で1回動く ----
; Up=7 / Left=Y / Down=U / Right=I
ScrollLock & 7::Gosub, MoveByState
ScrollLock & y::Gosub, MoveByState
ScrollLock & u::Gosub, MoveByState
ScrollLock & i::Gosub, MoveByState

; ---- 方向キーUP：離した方向だけ初速へ ----
ScrollLock & 7 up::Gosub, ResetU
ScrollLock & u up::Gosub, ResetD
ScrollLock & y up::Gosub, ResetL
ScrollLock & i up::Gosub, ResetR

; ---- スクロール ----
ScrollLock & 6::MouseClick, WheelUp,,, %wheelSpeed%
ScrollLock & 8::MouseClick, WheelDown,,, %wheelSpeed%

; ---- 左クリック（Space / ドラッグ）----
ScrollLock & Space::
    MouseClick, left,,, 1, 0, D
    KeyWait, Space
    MouseClick, left,,, 1, 0, U
return

; ---- 右クリック（ドラッグ）----
ScrollLock & t::
    MouseClick, right,,, 1, 0, D
    KeyWait, t
    MouseClick, right,,, 1, 0, U
return

; =========================
; ラベル
; =========================

MoveByState:
    ; Up=7 / Left=Y / Down=U / Right=I
    u := GetKeyState("7","P")  ; 上
    l := GetKeyState("y","P")  ; 左
    d := GetKeyState("u","P")  ; 下
    r := GetKeyState("i","P")  ; 右

    if (!l && !r && !u && !d)
        return

    boost := GetKeyState("Shift","P") ? shiftBoost : 1.0

    dx := 0, dy := 0
    if (l)
        dx -= stepL * boost
    if (r)
        dx += stepR * boost
    if (u)
        dy -= stepU * boost
    if (d)
        dy += stepD * boost

    MouseMove, dx, dy, 0, R

    ; 動いた方向だけ加速
    if (l) {
        stepL := stepL * accelFactor
        if (stepL > maxStep)
            stepL := maxStep
    }
    if (r) {
        stepR := stepR * accelFactor
        if (stepR > maxStep)
            stepR := maxStep
    }
    if (u) {
        stepU := stepU * accelFactor
        if (stepU > maxStep)
            stepU := maxStep
    }
    if (d) {
        stepD := stepD * accelFactor
        if (stepD > maxStep)
            stepD := maxStep
    }
return

ResetU:
    stepU := baseStep
return
ResetD:
    stepD := baseStep
return
ResetL:
    stepL := baseStep
return
ResetR:
    stepR := baseStep
return
