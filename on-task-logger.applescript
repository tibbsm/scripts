-- other info to grab and log (chrome tabs, other apps open, etc.)
set userInput to text returned of (display dialog "What are you working on?" default answer "" giving up after 60)

if userInput is not equal to "" then
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & "," & quoted form of userInput & " >> ~/" & ".tasklog"
end if