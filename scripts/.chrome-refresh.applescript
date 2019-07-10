#!/usr/bin/osascript

on run argv
  try
    set _APP_TIMEOUT to 5
    if ("CHROME_TIMEOUT" is in system attribute) then
      set _APP_TIMEOUT to (system attribute "CHROME_TIMEOUT") as integer
    end if

    with timeout of _APP_TIMEOUT seconds
      repeat with _url in argv
        tell application "Google Chrome"
          repeat with w in every window
            repeat with t in every tab in w
              if _url is in (URL of t as text) then
                tell t to reload
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

