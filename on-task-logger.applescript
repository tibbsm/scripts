set userInput to text returned of (display dialog "What are you working on?" default answer "" giving up after 300)

if userInput is not equal to "" then
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & "," & quoted form of userInput & " >> ~/" & ".tasklog"
end if