#!/usr/bin/osascript

property _TIMEOUT_APP: 5

on run argv
  try
    with timeout of _TIMEOUT_APP seconds
      tell application "Google Chrome"
        repeat with _arg_url in argv
          repeat with w in every window
            try
              set _tabs_count to (count tabs of w)
              set i to 1
              repeat until (i > _tabs_count)
                with timeout of 2 seconds
                  set _tab_url to (URL of (tab i of w)) as text
                  if (_tab_url as text is _arg_url as text) then
                    tell (tab i of w) to close
                    set _tabs_count to _tabs_count - 1
                  else
                    set i to i + 1
                  end if
                end timeout
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
