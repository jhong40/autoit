Dim objResult
Dim intervalSec
Dim durationSec
Dim cnt

intervalSec = 60
durationSec = 3600

cnt = 0

Set objShell = WScript.CreateObject("WScript.Shell")    

Do While True
  objResult = objShell.sendkeys("{NUMLOCK}{NUMLOCK}")
  Wscript.Sleep (intervalSec*1000)
  cnt = cnt + 1
  If durationSec <= (intervalSec * cnt) Then
      Exit Do
  End If
Loop
