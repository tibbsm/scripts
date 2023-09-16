-- Use hyper+v for starters

-- get last 10 from clipboard
set tailOutput to (do shell script "tail -n 10 /Users/mt/clipboard.txt")
-- set formattedDate to (do shell script "date '+%Y-%m-%dT%H:%M:%S'") as text
-- Split the output into lines and store them in an AppleScript list
set linesList to paragraphs of tailOutput

set dropdownOptions to linesList
set selectedOption to choose from list dropdownOptions with prompt "Select an option:" default items {item 1 of dropdownOptions} without multiple selections allowed and empty selection allowed

-- if selectedOption is false then
--     display dialog "No option selected. Exiting."
-- else
--     set chosenOption to item 1 of selectedOption
--     display dialog "You selected: " & chosenOption
-- end if



-- -- Copy selected text to clipboard:
-- tell application "System Events" to keystroke "c" using {command down}
-- delay 1 -- Without this, the clipboard may have stale data.

-- -- Append clipboard to some text file
-- set theTextToAppend to the clipboard

-- -- 
-- set formattedDate to (do shell script "date '+%Y-%m-%dT%H:%M:%S'") as text
-- set cpData to formattedDate & "," & theTextToAppend

-- -- JSON? CSV? for dealing with new lines and whatever
-- set theFilePath to "/Users/mt/clipboard.txt" -- Replace with the actual file path

-- do shell script "echo " & quoted form of cpData & " >> " & quoted form of theFilePath
