#!/usr/bin/osascript

on run argv
    repeat with _url in argv
        tell application "Google Chrome"
        repeat with w in every window
            repeat with t in every tab in w
                if _url is in (URL of t as text) then
                    tell t to reload
                end if
            end repeat
        end repeat
        end tell
    end repeat
end run
