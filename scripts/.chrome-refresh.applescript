#!/usr/bin/osascript

on run argv
  try
    repeat with _url in argv
      tell application "Google Chrome"
        repeat with w in every window
          repeat with t in every tab in w
            if _url is in (URL of t as text) then
              with timeout of 3 seconds
                tell t to reload
              end timeout
            end if
          end repeat
        end repeat
      end tell
    end repeat
  on error errorMessage number errorNumber
    if (errorNumber is equal to -609) --Connection is invalid
      return
    end if
    error errorMessage number errorNumber
  end try
end run

