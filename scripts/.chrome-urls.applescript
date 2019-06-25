#!/usr/bin/osascript

try
  tell application "Google Chrome"
    repeat with w in  every window
      repeat with t in every tab in w
        log (URL of t as text)
      end repeat
    end repeat
  end tell
on error errorMessage number errorNumber
  if (errorNumber is equal to -609) --Connection is invalid
    return
  end if
  error errorMessage number errorNumber
end try
