#!/usr/bin/osascript

try
  tell application "Google Chrome"
    activate
    delay 0.5 -- delay REQUIRED
    tell application "System Events"
      keystroke "f" using {command down, control down}
    end tell
  end tell
on error errorMessage number errorNumber
  if (errorNumber is equal to -609) --Google Chrome got an error: Connection is invalid
    return
  end if
  error errorMessage number errorNumber
end try
