#!/usr/bin/osascript

on run argv
  try
    set _APP_TIMEOUT to 5
    if ("CHROME_TIMEOUT" is in system attribute) then
      set _APP_TIMEOUT to (system attribute "CHROME_TIMEOUT") as integer
    end if

    with timeout of _APP_TIMEOUT seconds
      tell application "Google Chrome"
        repeat with _arg_url in argv
          repeat with w in every window
            try
              set _tabs_count to (count tabs of w)
              set i to 1
              repeat until (i > _tabs_count)
                set _tab_url to (URL of (tab i of w)) as text
                if (_tab_url as text is _arg_url as text) then
                  tell (tab i of w) to close
                  set _tabs_count to _tabs_count - 1
                else
                  set i to i + 1
                end if
              end repeat
            on error errorMessage number errorNumber
              --Invalid index. (-1719)
              if (errorNumber is in {-1719}) then return
              error errorMessage number errorNumber
            end try
          end repeat
        end repeat
      end tell
    end timeout
    return
  on error errorMessage number errorNumber
    --Connection is invalid. (-609)
    if (errorNumber is in {-609}) then return
    error errorMessage number errorNumber
  end try
end run
