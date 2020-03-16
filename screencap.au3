#include <ScreenCapture.au3>

HotKeySet("{F2}","TakePick")
HotKeySet("{F12}", "Terminate")

$i=1;
While 1
   sleep(100)
WEnd


Func TakePick()
  ;_ScreenCapture_Capture($tpath &  @HOUR & "." & @MIN &"." & @SEC & ".jpg")
  $ActiveWindow = WinGetHandle("[active]")
  ;_ScreenCapture_CaptureWnd ( @MyDocumentsDir &  @HOUR & "." & @MIN &"." & @SEC & ".jpg", $ActiveWindow)

   ;MsgBox($MB_SYSTEMMODAL, "Title", $i)

   _ScreenCapture_CaptureWnd ( "\image\" &  $i & ".jpg", $ActiveWindow)
   $i=$i+1

EndFunc

Func Terminate()
    Exit
EndFunc   ;==>Terminate
