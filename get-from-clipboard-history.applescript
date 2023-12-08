-- Use hyper+v for starters

-- TODO?
-- would be better to launch a small app that could use fzf on the whole history

-- get last 10 from clipboard
set tailOutput to (do shell script "tail -n 10 /Users/mt/clipboard.txt")
set linesList to paragraphs of tailOutput

set dropdownOptions to linesList

tell application "System Events"
    set activeApp to name of first application process whose frontmost is true
end tell

tell application "SystemUIServer"
    activate
    set selectedOption to choose from list dropdownOptions with prompt "Select an option:" default items {item 1 of dropdownOptions} with multiple selections allowed
end tell

if selectedOption is false then
else
    -- combine mulitple selections
    set finalString to ""
    set selectedOptionSize to count of selectedOption
    set counter to 0
    repeat with thisItem in selectedOption
        set finalString to finalString & thisItem
        if (counter is not selectedOptionSize - 1) then 
            -- the return creates a new line
            set finalString to finalString & return 
        end if
        set counter to (counter + 1)
    end repeat
    set the clipboard to finalString
end if

tell application "System Events"
    tell process activeApp
        set frontmost to true
    end tell
end tell
