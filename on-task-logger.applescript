-- Use cron or similar to schedule (launchd is apparently the way)
-- for starters, https://gist.github.com/johndturn/09a5c055e6a56ab61212204607940fa0

set userInput to text returned of (display dialog "What are you working on?" default answer "")

if userInput is not equal to "" then
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & " - " & quoted form of userInput & " >> ~/" & ".tasklog"
end if