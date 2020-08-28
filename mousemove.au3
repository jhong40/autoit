#include <Date.au3>
#include <FileConstants.au3>

HotKeySet("{PAUSE}", "Monitor")

$flag=True
Local $hFileOpen = FileOpen("z.txt",  $FO_OVERWRITE)

$h=12+9
$m=52

while (1)
 if (@HOUR>$h) then
    FileWrite($hFileOpen, @HOUR & ":" & @MIN & ":" & @SEC & " closed...." & @CRLF)
    FileClose($hFileOpen)
    exit
 endif

 if (@HOUR=$h) then
   if (@MIN>=$m) then
     FileWrite($hFileOpen, @HOUR & ":" & @MIN & ":" & @SEC & " closed...." & @CRLF)
     FileClose($hFileOpen)
     exit
   endif
 endif


  Local $aPos = MouseGetPos()
  MouseMove($aPos[0],$aPos[1])
  FileWrite($hFileOpen, @HOUR & ":" & @MIN & ":" & @SEC & " "  & $aPos[0] & " , " & $aPos[1] & @CRLF )

#cs
  If ($flag) Then
    MouseMove($aPos[0]+1,$aPos[1]+1)
    FileWrite($hFileOpen, @HOUR & ":" & @MIN & ":" & @SEC & " "  & $aPos[0]+1 & " , " & $aPos[1]+1 & @CRLF )
  Else
    MouseMove($aPos[0]-1,$aPos[1]-1)
    FileWrite($hFileOpen, @HOUR & ":" & @MIN & ":" & @SEC & " "  & $aPos[0]-1 & " , " & $aPos[1]-1 & @CRLF )
  EndIf

  $flag=Not $flag
  #sleep(60000*4+50000)
#ce
  sleep(50000)

WEnd

Func Monitor()
  _RunAU3("ml.au3")
EndFunc

Func _RunAU3($sFilePath, $sWorkingDir = "", $iShowFlag = @SW_SHOW, $iOptFlag = 0)
    Return Run('"' & @AutoItExe & '" /AutoIt3ExecuteScript "' & $sFilePath & '"', $sWorkingDir, $iShowFlag, $iOptFlag)
EndFunc   ;==>_RunAU3
