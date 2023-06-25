tell application "Google Chrome"
	set windowList to windows
	set tabList to {}
	
	repeat with currentWindow in windowList
		set windowTabs to tabs of currentWindow
		repeat with currentTab in windowTabs
			set tabInfo to {tabTitle:title of currentTab, tabUrl:URL of currentTab}
			set end of tabList to tabInfo
		end repeat
	end repeat
end tell

set filePath to "Documents:Google Chrome Tabs.md"
set fileReference to open for access file filePath with write permission

repeat with tabInfo in tabList
	set tabTitle to tabTitle of tabInfo
	set tabUrl to tabUrl of tabInfo
	set lineText to "- " & tabTitle & " | " & tabUrl & linefeed
	write lineText to fileReference starting at eof
end repeat

close access fileReference
