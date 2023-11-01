tell application "Google Chrome"
    set windowList to every window
    set allTabs to {}
    repeat with aWindow in windowList
        set tabList to every tab of aWindow
        repeat with t in tabList
            set end of allTabs to URL of t & ","
        end repeat
    end repeat
end tell

-- other info to grab and log (chrome tabs, other apps open, etc.)
-- https://stackoverflow.com/questions/18372328/applescript-get-list-of-running-apps
set allApps to {}
tell application "System Events"
    set listOfProcesses to (name of every process where background only is false)
    repeat with p in listOfProcesses
        set end of allApps to p & ","
    end repeat
end tell

set userInput to text returned of (display dialog "What are you working on?" default answer "" giving up after 60)

if userInput is not equal to "" then
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & "," & quoted form of userInput & ",'" & allTabs & allApps & "' >> ~/.tasklog"
else
    do shell script "echo " & "$(date '+%Y-%m-%d %H:%M:%S')" & ",no input,'" & allTabs & allApps & "' >> ~/.tasklog" 
end if