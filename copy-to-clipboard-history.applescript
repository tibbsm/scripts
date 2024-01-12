-- Use hyper+c for starters
-- Or: on copy, just save copy (cmd+c), save to history

-- Copy selected text to clipboard:
tell application "System Events" to keystroke "c" using {command down}
delay 1 -- Without this, the clipboard may have stale data.

-- Append clipboard to some text file
set theTextToAppend to the clipboard

-- set formattedDate to (do shell script "date '+%Y-%m-%dT%H:%M:%S'") as text
-- set cpData to formattedDate & "," & theTextToAppend
set cpData to theTextToAppend

set theFilePath to "/Users/mt/clipboard.txt" -- Replace with the actual file path

do shell script "echo " & quoted form of cpData & " >> " & quoted form of theFilePath
