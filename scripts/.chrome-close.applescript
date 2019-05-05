#!/usr/bin/osascript

on run argv
    if count of argv is 0 then --close current tab
        tell application "Google Chrome"
            if count of window is not 0 then
                tell active tab of front window to close
            end if
        end tell
        return
    end if --close by url
    tell application "Google Chrome"
        repeat with _url in argv
            repeat with w in every window
                repeat with t in every tab in w
                    if _url is in (URL of t as text) then
                        tell t to close
                    end if
                end repeat
            end repeat
        end repeat
    end tell
end run
