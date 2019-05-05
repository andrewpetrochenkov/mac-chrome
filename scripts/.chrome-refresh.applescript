#!/usr/bin/osascript

on run argv
    if count of argv is 0 then --refresh current tab
        tell application "Google Chrome"
            if count of windows is not 0 then
                tell active tab of first window to reload
            end if
        end tell
    else
        repeat with _url in argv
            tell application "Google Chrome"
            repeat with w in  every window
                repeat with t in every tab in w
                    if _url is in (URL of t as text) then
                    tell t to reload
                    end if
                end repeat
            end repeat
            end tell
        end repeat
    end if
end run
