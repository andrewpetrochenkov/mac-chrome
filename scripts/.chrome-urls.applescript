#!/usr/bin/osascript

property _TIMEOUT_APP: 5

try
  with timeout of _TIMEOUT_APP seconds
    tell application "Google Chrome"
      repeat with w in  every window
        repeat with t in every tab in w
          log (URL of t as text)
        end repeat
      end repeat
    end tell
  end timeout
on error errorMessage number errorNumber
  --Connection is invalid. (-609)
  if (errorNumber is in {-609}) then return
  error errorMessage number errorNumber
end try
