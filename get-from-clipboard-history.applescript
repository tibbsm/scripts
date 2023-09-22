-- Use hyper+v for starters

-- get last 10 from clipboard
set tailOutput to (do shell script "tail -n 10 /Users/mt/clipboard.txt")
set linesList to paragraphs of tailOutput

set dropdownOptions to linesList

set selectedOption to choose from list dropdownOptions with prompt "Select an option:" default items {item 1 of dropdownOptions} with multiple selections allowed
-- if multiple selections, join

if selectedOption is false then
else
    set chosenOption to item 1 of selectedOption
    set the clipboard to chosenOption
end if
