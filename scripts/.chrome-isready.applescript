#!/usr/bin/osascript

on run argv
  try
    set _TIMEOUT_APP to (item 1 of argv)
    with timeout of _TIMEOUT_APP seconds
      tell application "Google Chrome"
        repeat with w in  every window
          repeat with t in every tab in w
            set _tab_url to (URL of t as text)
          end repeat
        end repeat
      end tell
      return 1
    end timeout
  on error errorMessage number errorNumber
    --Connection is invalid. (-609)
    --AppleEvent timed out. (-1712)
    if (errorNumber is in {-609,-1712}) then return
    error errorMessage number errorNumber
  end try
end run
