# my-keymap

```
ESC     1!    2@    3#    4$    5%      6^    7&    8*    9(    0)    -_    =+    BS
`~      F1    F2    F3    F4    F5      F6    F7    F8    F9    F10   F11   F12   Del
------  ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ----- ----- -----
TAB     Q     W     E     R     T       Y     U     I     O     P     [{    ]}    \|
*S-TAB  *LClk *Copy End*        x       *WinV PgUp  Up    PgDn  PrtSc ScrLk Pause 
------  ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ----- ----- -----
CTRL    A     S     D     F     G       H     J     K     L     ;:    '"      ENTER
        *Home *RClk *Del  Mute  x       *BS　 Lelf  Down  Right Ins   *Enter
------- ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ------  ---------
SHIFT   Z     X     C     V     B       N     M     ,<    .>    /?     SHIFT
        App                     x             x     x     x     x  
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
   - LCtrl
       - CapsLock    > LCtrl > Pn
       - Fn+CapsLock > LCtrl > Pn
   - Shit-Tab
       - Fn+Tab > Shint+Tab> Pn
   - Home
       - Fn+A > Fn+H   > Pn
   - End
       - Fn+E > Fn+N   > Pn
   - BS
       - Fn+H > BS     > Pn
   - Del
       - Fn+D > Fn+'   > Pn
   - Enter
       - Fn+' > Enter  > Pn
   - JP/EN
       - Fn+RSpace > LAlt+Fn+ESC > Pn
   - Copy(LCtrl+C)
       - Fn+W > LCtrl+C > Pn      
   - Paste(Win+V)
       - Fn+Y > Win+V  > Pn
## Fnキー移動
   - LShift + Fn > Fn > LWin : Fn

## AHK
```
; Fn + Q
Media_Prev::
  Send {LButton Down}
  KeyWait, Media_Prev
  Send {LButton Up}
return

; Fn + S
Volume_Down::
  Send {RButton Down}
  KeyWait, Volume_Down
  Send {RButton Up}
return
```
