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

; 右CtrlはOSに渡さない（通常のCtrl動作を封じる）
$*RControl::return

$*RControl up::
    Gosub, ResetU
    Gosub, ResetD
    Gosub, ResetL
    Gosub, ResetR
return


; ---- 方向キー：押下/リピートのたびに状態合成で1回動く ----
RControl & e::Gosub, MoveByState
RControl & s::Gosub, MoveByState
RControl & d::Gosub, MoveByState
RControl & f::Gosub, MoveByState

; ---- 方向キーUP：離した方向だけ初速へ ----
RControl & e up::Gosub, ResetU
RControl & d up::Gosub, ResetD
RControl & s up::Gosub, ResetL
RControl & f up::Gosub, ResetR

; ---- スクロール ----
RControl & =::MouseClick, WheelUp,,, %wheelSpeed%
RControl & -::MouseClick, WheelDown,,, %wheelSpeed%

; ---- 左クリック（Space / ドラッグ）----
RControl & Space::
    MouseClick, left,,, 1, 0, D
    KeyWait, Space
    MouseClick, left,,, 1, 0, U
return

; ---- 右クリック（ドラッグ）----
RControl & t::
    MouseClick, right,,, 1, 0, D
    KeyWait, t
    MouseClick, right,,, 1, 0, U
return

; =========================
; ラベル
; =========================

MoveByState:
    l := GetKeyState("s","P")  ; 左
    r := GetKeyState("f","P")  ; 右
    u := GetKeyState("e","P")  ; 上
    d := GetKeyState("d","P")  ; 下

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
