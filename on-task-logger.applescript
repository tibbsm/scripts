tell application "Google Chrome"
    set windowList to every window
    set allTabs to {}
    repeat with aWindow in windowList
        set tabList to every tab of aWindow
        repeat with aTab in tabList
            set end of allTabs to URL of aTab & ","
        end repeat
    end repeat
end tell

-- other info to grab and log (chrome tabs, other apps open, etc.)
-- https://stackoverflow.com/questions/18372328/applescript-get-list-of-running-apps
set userInput to text returned of (display dialog "What are you working on?" default answer "" giving up after 60)

if userInput is not equal to "" then
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & "," & quoted form of userInput & ",'" & allTabs & "' >> ~/.tasklog"
else
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & ",no input,'" & allTabs & "' >> ~/.tasklog"
end if