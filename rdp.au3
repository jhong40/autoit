#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>


Run("C:/Windows/System32/mstsc.exe")
WinWaitActive("Remote Desktop Connection")
Send("{ENTER}")


WinWaitActive("Windows Security")

$myfile="C:/note.txt"
$hFileOpen = FileOpen($myfile, $FO_READ)  ; open file
$sFileRead = FileReadLine($hFileOpen, 1)     ; read 1st line
FileClose($hFileOpen)

Send($sFileRead)
Send("{ENTER}")
