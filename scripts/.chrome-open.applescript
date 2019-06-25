#!/usr/bin/osascript

on run argv
  try
    repeat with _arg_url in argv
      set _exists to false
      tell application "Google Chrome"
        repeat with w in every window
          set tab_i to 0
          repeat with t in every tab in w
            set tab_i to (tab_i+1)
            with timeout of 2 seconds
              set _tab_url to ((URL of t) as text)
              if (_tab_url as text) is (_arg_url as text) then
                set _exists to true
                set index of w to 1 --activate window
                tell w to set active tab index to tab_i --activate tab
              end if
            end timeout
          end repeat
        end repeat
        if _exists is false then
          open location _arg_url
        end if
      end tell
    end repeat
  on error errorMessage number errorNumber
      if (errorNumber is equal to -609) --Connection is invalid
          return
      end if
      error errorMessage number errorNumber
  end try
end run
