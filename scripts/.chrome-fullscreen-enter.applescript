#!/usr/bin/osascript

on run argv
    tell application "Google Chrome" to activate
    tell application "System Events"
        keystroke "f" using {command down, control down}
    end tell
end run
