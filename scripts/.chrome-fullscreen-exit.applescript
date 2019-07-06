#!/usr/bin/osascript

property _TIMEOUT_APP: 10

try
  with timeout of _TIMEOUT_APP seconds
    tell application "Google Chrome"
      activate
      delay 0.5 -- delay REQUIRED
      tell application "System Events"
        keystroke "f" using {command down, control down}
      end tell
    end tell
  end timeout
on error errorMessage number errorNumber
  --Connection is invalid. (-609)
  if (errorNumber is in {-609}) then return
  error errorMessage number errorNumber
end try
