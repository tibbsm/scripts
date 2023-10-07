-- Use cron or similar to schedule

-- Prompt the user for text input
set userInput to text returned of (display dialog "What are you working on?" default answer "")

-- TODO: handle empty ''
-- alternatively you could just make this a bash script and use applescript just to prompt the user

set currentDate to current date
set timestamp to (do shell script "date '+%Y-%m-%d %H:%M:%S'")
set textToAppend to timestamp & " - " & userInput
do shell script "echo " & quoted form of textToAppend & " >> ~/" & ".tasklog"