# my-keymap

```
__________________________________________       ____________________________________________________________
| ESC |  1!  |  2@  |  3#  |  4$  |  5%  |       |  6^  |  7&  |  8*  |  9(  |  0)  |  -_  |  =+  |  BS     |
| `~  |  F1  |  F2  |  F3  |  F4  |  F5  |       |  F6  |  F7  |  F8  |  F9  |  F10 |  F11 |  F12 |  Del    |
_____________________________________________       _________________________________________________________
| TAB    |  Q   |  W   |  E   |  R   |  T   |       | Y    |  U   |  I   |  O   |  P   |  [{  |  ]}  |  \|  |
| Layout | Rev  | *CUT | *End | Reset|      |       | *C-v | PgUp |  Up  | PgDn | *Up  | ScrLk| Pause|      | 
______________________________________________       ________________________________________________________
| *CTRL   |  A   |  S   |  D   |  F   |  G   |       |  H   |  J   |  K   |  L   |  ;:  |  '"  |  ENTER     |
|         |*Home | *C-c | *Del | *C-f |      |       | *BS  | Lelf | Down | Right| Ins  |  Del |            |
_______________________________________________       _______________________________________________________
| SHIFT    |  Z   |  X   |  C   | V    |  B   |       |  N   |  M   |  ,<  |  .>  |  /?  |  SHIFT           |
|          | *C-z |      |      | *PgDn|      |       | *Down|  LD  |  L1  |  L2  |  L3  |                  |
________________________________________________     ________________________________________________________
| *Fn  | WIN  | ALT  |  *JP/EN                 |     |  SPACE           | JP/EN  |   PN   |*App/Men|  CTRL  |
|      |      |      |  *SHIFT                 |     |  *SHIFT          |        |        |        |        |
```

## 使用キーボード
Mistel md600v3

## キーマップリセット
両方のALTを長押し: ALL RESET

## キーマップ設定
   - CapsLockをCtrlに
       - CapsLock    > LCtrl
       - Fn+CapsLock > LCtrl
   - 左SPACEを半角/全角に
       - 左SPACE > LAlt+Fn+ESC
   - CUT
       - Fn+w > Fn+Shift+N(End),C-x

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




