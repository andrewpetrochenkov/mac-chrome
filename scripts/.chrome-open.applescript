#!/usr/bin/osascript

on run argv
  try
    set _APP_TIMEOUT to 5
    if ("CHROME_TIMEOUT" is in system attribute) then
      set _APP_TIMEOUT to (system attribute "CHROME_TIMEOUT") as integer
    end if

    with timeout of _APP_TIMEOUT seconds
      repeat with _arg_url in argv
        set _exists to false
        tell application "Google Chrome"
          repeat with w in every window
            set tab_i to 0
            repeat with t in every tab in w
              set tab_i to (tab_i+1)
              set _tab_url to ((URL of t) as text)
              if (_tab_url as text) is (_arg_url as text) then
                set _exists to true
                set index of w to 1 --activate window
                tell w to set active tab index to tab_i --activate tab
              end if
            end repeat
          end repeat
          if (_exists is false) then open location _arg_url
        end tell
      end repeat
    end timeout
  on error errorMessage number errorNumber
    --Connection is invalid. (-609)
    if (errorNumber is in {-609}) then return
    error errorMessage number errorNumber
  end try
end run
