set allApps to {}
set allTabs to {}

-- // TODO: get active window

tell application "System Events"
    set listOfProcesses to (displayed name of every process where background only is false)
    repeat with aProcess in listOfProcesses
        set end of allApps to aProcess & ","
    end repeat
end tell

if listOfProcesses contains "Google Chrome" then
    tell application "Google Chrome"
        set windowList to every window
        repeat with aWindow in windowList
            set tabList to every tab of aWindow
            repeat with aTab in tabList
                set end of allTabs to URL of aTab & ","
            end repeat
        end repeat
    end tell
end if

set userInput to text returned of (display dialog "What are you working on?" default answer "" giving up after 60)

if userInput is not equal to "" then
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & "," & quoted form of userInput & ",'" & allApps & "' >> ~/.tasklog"
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & "," & quoted form of userInput & ",'" & allApps & "' >> ~/.tasklog"
else
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & ",no input,'" & allApps & "' >> ~/.tasklog" 
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & ",no input,'" & allTabs & "' >> ~/.tasklog" 
end if