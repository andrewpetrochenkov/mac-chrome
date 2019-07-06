#!/usr/bin/osascript

property _TIMEOUT_APP: 5

on run argv
  try
    with timeout of _TIMEOUT_APP seconds
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
    end timeout
  on error errorMessage number errorNumber
    --Connection is invalid. (-609)
    if (errorNumber is in {-609}) then return
    error errorMessage number errorNumber
  end try
end run

