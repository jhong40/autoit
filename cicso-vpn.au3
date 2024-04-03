#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>

Run("C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe")
$hWnd=WinWaitActive("Cisco AnyConnect Secure Mobility Client")
ControlClick($hWnd, '', 'Button1')

$myfile="C:/note.txt"
$hFileOpen = FileOpen($myfile, $FO_READ)  ; open file
$sFileRead = FileReadLine($hFileOpen, 1)     ; read 1st line
FileClose($hFileOpen)                        ; close file

;MsgBox($MB_SYSTEMMODAL, "", "First line of the file:" & @CRLF & "aaa" & $sFileRead & "aaa")

WinWaitActive("Cisco AnyConnect | abc.com")    ; abc.com => other 
Send($sFileRead)
Send("{TAB}")
