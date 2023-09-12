-- Use hyper+c for starters

-- Copy selected text to clipboard:
tell application "System Events" to keystroke "c" using {command down}
delay 1 -- Without this, the clipboard may have stale data.

-- Append clipboard to some text file
set theTextToAppend to the clipboard

-- JSON? for dealing with new lines and whatever
set theFilePath to "~/clipboard.txt" -- Replace with the actual file path

-- do shell script "echo " & quoted form of theTextToAppend & " >> " & quoted form of theFilePath
