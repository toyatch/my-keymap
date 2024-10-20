# my-keymap

```
ESC     1!    2@    3#    4$    5%      6^    7&    8*    9(    0)    -_    =+    BS
`~      F1    F2    F3    F4    F5      F6    F7    F8    F9    F10   F11   F12   Del
------  ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ----- ----- -----
TAB     Q     W     E     R     T       Y     U     I     O     P     [{    ]}    \|
        Rev   Pause Next        x       Calc  PgUp  Up    PgDn  PrtSc ScrLk Pause 
------  ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ----- ----- -----
*CTRL   A     S     D     F     G       H     J     K     L     ;:    '"      ENTER
              VDown VUp   VMute x       Home  Lelf  Down  Right *Del  *Ins
------- ----- ----- ----- ----- -----   ----- ----- ----- ----- ----- ------  ---------
SHIFT   Z     X     C     V     B       N     M     ,<    .>    /?     SHIFT
        App                     x       End   LD    L1    L2    L3  
------  ----- ----- ----- ----- -----   ----- ----- ----- ----- -----  ----------------
CTRL    WIN   ALT   SPACE               SPACE          *JP/EN    PN    Fn        CTRL
------  ----- ----- -----------------   -------------- --------- ----- --------- ------
```

## 使用キーボード
Mistel md600v3

## キーマップリセット
両方のALTを長押し: ALL RESET

## キーマップ設定
   - CapsLockをCtrlに
       - CapsLock    > LCtrl
       - Fn+CapsLock > LCtrl
   - 右ALTを半角/全角に
       - Fn+RAlt > LAlt+Fn+ESC
   - Del/Ins入れ替え
       - Fn+; > Fn+'
       - Fn+' > Fn+;

## AHK
mouse-click.ahk
```
#NoTrayIcon

; Fn + F
Media_Next::
  Send {LButton Down}
  KeyWait, Media_Next
  Send {LButton Up}
return

; Fn + D
Media_Prev::
  Send {RButton Down}
  KeyWait, Media_Prev
  Send {RButton Up}
return
```
Win＋R shell:startup でスタートアップに.ahkのショートカットを作成

# Note
- ScrLk: 現代においてはほぼ使われない/Excelで使うことがある
- Pause: Win + Pauseでシステム/バージョンの画面が出る
- Cal: 電卓起動ならWin+R calcで代用できる
- Ins: ターミナルなどのショートカットで使うことがある。Shift+Insで貼り付けなど。
- App: 右クリックと同じ




