-- Use hyper+v for starters

-- get last 10 from clipboard
set tailOutput to (do shell script "tail -n 10 /Users/mt/clipboard.txt")
set linesList to paragraphs of tailOutput

set dropdownOptions to linesList

set selectedOption to choose from list dropdownOptions with prompt "Select an option:" default items {item 1 of dropdownOptions} with multiple selections allowed


if selectedOption is false then
else
    -- combine mulitple selections
    set finalString to ""
    set selectedOptionSize to count of selectedOption
    set counter to 0
    repeat with thisItem in selectedOption
        if (counter = selectedOptionSize - 1) then
            set finalString to finalString & thisItem
        else
            set finalString to finalString & thisItem & return -- the return creates a new line
        end if
        set counter to (counter + 1)
    end repeat
    set the clipboard to finalString
end if