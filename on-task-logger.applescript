tell application "Google Chrome"
    set windowList to every window
    set allTabs to {}
    repeat with aWindow in windowList
        set tabList to every tab of aWindow
        repeat with aTab in tabList
            set tabURL to URL of aTab & ","
            set end of allTabs to tabURL
        end repeat
    end repeat
end tell

-- other info to grab and log (chrome tabs, other apps open, etc.)
set userInput to text returned of (display dialog "What are you working on?" default answer "" giving up after 60)

if userInput is not equal to "" then
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & "," & quoted form of userInput & ",'" & allTabs & "' >> ~/.tasklog"
end if