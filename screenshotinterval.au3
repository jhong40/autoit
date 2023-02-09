#include <ScreenCapture.au3>
HotKeySet("{F12}", "Terminate")

$i=1;
While 1
  $ActiveWindow = WinGetHandle("[active]")
  _ScreenCapture_CaptureWnd ( @MyDocumentsDir  & "\" & $i & ".jpg", $ActiveWindow)
  $i=$i+1
  sleep(30*1000)  ; every 30 seconds
WEnd

Func Terminate()
    Exit
EndFunc   ;==>Terminate
