#!/usr/bin/osascript

on run argv
    tell application "Google Chrome"
        activate
        delay 0.5 -- delay REQUIRED
        tell application "System Events"
            keystroke "f" using {command down, control down}
        end tell
    end tell
end run
