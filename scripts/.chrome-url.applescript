#!/usr/bin/osascript

try
    tell application "Google Chrome"
      if count of windows is not 0 then return URL of active tab of first window
    end tell
on error errorMessage number errorNumber
    if (errorNumber is equal to -609) --Google Chrome got an error: Connection is invalid
        return
    end if
    error errorMessage number errorNumber
end try
