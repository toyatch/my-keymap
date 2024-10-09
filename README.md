# my-keymap

```
ESC     1!    2@    3#    4$    5%      6^    7&    8*    9(    0)    -_    =+    BS
`~      F1    F2    F3    F4    F5      F6    F7    F8    F9    F10   F11   F12   Del
------  ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ----- ----- -----
TAB     Q     W     E     R     T       Y     U     I     O     P     [{    ]}    \|
*A-TAB                          x       *WinV PgUp  Up    PgDn  PrtSc ScrLk Pause 
------  ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ----- ----- -----
*CTRL   A     S     D     F     G       H     J     K     L     ;:     '"     ENTER
             *Shift VUp   VMute x       Home  Lelf  Down  Right Ins    Del
                    RClk  LClk
------- ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ------  ---------
SHIFT   Z     X     C     V     B       N     M     ,<    .>    /?     SHIFT
        App                     x       End   LD    L1    L2    L3  
------  ----- ----- ----- ----- -----   ----- ----- ----- ----- -----  ----------------
CTRL    WIN   ALT   *Fn                 SPACE          ALT       PN     *App      CTRL
                                        *JP/EN
------  ----- ----- -----------------   -------------- --------- ----- --------- ------
```

## 使用キーボード
Mistel md600v3

## キーマップリセット
両方のALTを長押し: ALL RESET

## キーマップ設定
   - Alt-Tab
       - Fn+Tab > RAlt+Tab > Pn
   - Paste(Win+V)
       - Fn+Y > Win+V  > Pn
   - LCtrl
       - CapsLock    > LCtrl > Pn
       - Fn+CapsLock > LCtrl > Pn
   - RShift
       - Fn+S > RShift > Pn
   - JP/EN
       - Fn+RSpace > LAlt+Fn+ESC > Pn
## Fnキー移動
   - LShift + Fn > Fn > LSpace : Fn

## AHK
mouse-click.ahk
```
#NoTrayIcon

; Fn + F
Volume_Mute::
  Send {LButton Down}
  KeyWait, Volume_Mute
  Send {LButton Up}
return

; Fn + D
Volume_Up::
  Send {RButton Down}
  KeyWait, Volume_Up
  Send {RButton Up}
return
```
Win＋R shell:startup でスタートアップに.ahkのショートカットを作成

# Nore
- ScrLk: 現代においてはほぼ使われない
- Pause: Win + Pauseでシステム/バージョンの画面が出る
- Cal: 電卓起動ならWin+R calcで代用できる
- Ins: ターミナルなどのショートカットで使うことがある。Shift+Insで貼り付けなど。
- App: 右クリックと同じ




