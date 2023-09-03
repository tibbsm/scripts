-- Back up clipboard contents:
set savedClipboard to the clipboard

-- Copy selected text to clipboard:
tell application "System Events" to keystroke "c" using {command down}
delay 1 -- Without this, the clipboard may have stale data.

set highlightedText to the clipboard

-- Restore clipboard:
set the clipboard to savedClipboard
delay 1

return highlightedText