#!/usr/bin/osascript

try
  tell application "Google Chrome" to activate
  tell application "System Events"
    keystroke "f" using {command down, control down}
  end tell
on error errorMessage number errorNumber
  if (errorNumber is equal to -609) --Connection is invalid
    return
  end if
  error errorMessage number errorNumber
end try
