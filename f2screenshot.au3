#include <ScreenCapture.au3>

HotKeySet("{F2}","TakePick")
HotKeySet("{F12}", "Terminate")

$i=1;
While 1
   sleep(100)
WEnd


Func TakePick()
  $ActiveWindow = WinGetHandle("[active]")
  _ScreenCapture_CaptureWnd ( @MyDocumentsDir  & "\" & $i & ".jpg", $ActiveWindow)
  ;_ScreenCapture_CaptureWnd ( "\image\" &  $i & ".jpg", $ActiveWindow)

  $i=$i+1

EndFunc

Func Terminate()
    Exit
EndFunc   ;==>Terminate
