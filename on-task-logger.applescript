-- Use cron or similar to schedule
-- script to prompt user to log what they are working on

-- log to file

-- Prompt the user for text input
set userInput to text returned of (display dialog "What are you working on?" default answer "")

-- TODO: handle empty ''

set currentDate to current date
set timestamp to (do shell script "date '+%Y-%m-%d %H:%M:%S'")

-- create line in log which is `{timestamp} - {input}{new line}
set textToAppend to timestamp & " - " & userInput & linefeed

-- Specify the file path where you want to append the text (in the user's home directory)
set homeFolder to POSIX path of (path to home folder)
set filePath to (homeFolder & ".tasklog")

-- ??? Use bash instead (echo)?
-- Append the text to the file
try
    set fileReference to open for access filePath with write permission
    write textToAppend to fileReference starting at eof
    close access fileReference
    -- display dialog "Text appended successfully!" buttons {"OK"} default button "OK"
on error errMsg
    display dialog "An error occurred: " & errMsg buttons {"OK"} default button "OK"
end try
