#!/usr/bin/osascript

on run argv
    try
        tell application "Google Chrome" to activate
        tell application "System Events"
            keystroke "f" using {command down, control down}
        end tell
    on error errorMessage number errorNumber
        if (errorNumber is equal to -609) --Google Chrome got an error: Connection is invalid
            return
        end if
        error errorMessage number errorNumber
    end try
end run
