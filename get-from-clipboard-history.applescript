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
    repeat with thisItem in selectedOption
        -- TODO: this will add a new line even if there is 1 item
        -- ideally we dont add a new line on the last iteration
        set finalString to finalString & thisItem & return -- the return creates a new line
    end repeat
    set the clipboard to finalString
end if