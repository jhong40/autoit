#include <MsgBoxConstants.au3>
sleep(2000)

Local $h= WinWait("Status Notes Entry Screen", 10)
Local $Pos=WinGetPos($h)
$x=90
$y=190
MouseClick("left", $pos[0] + $x, $pos[1] + $y)
Send("Websphere admin NJ")
Send("{ENTER}")
Send("WebSphere admin NV")
Send("{ENTER}")
Send("NJkids batch run")
Send("{ENTER}")
Send("AWS")
Send("{ENTER}")

$x=99
$y=140
MouseClick("left", $pos[0] + $x, $pos[1] + $y)
Send("8")

$x=78
$y=43
MouseClick("left", $pos[0] + $x, $pos[1] + $y)

WinClose($h)

;MsgBox($MB_SYSTEMMODAL, "Title", $h, 10)
