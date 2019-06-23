#!/usr/bin/osascript

on run argv
  try
    repeat with _url in argv
      set _exists to false
      tell application "Google Chrome"
          repeat with w in every window
              set tab_i to 0
              repeat with t in every tab in w
                set tab_i to (tab_i+1)
                if (URL of t) is _url then
                    set _exists to true
                    set index of w to 1 --activate window
                    tell w to set active tab index to tab_i --activate tab
                end if
              end repeat
          end repeat
          if _exists is false then
            open location _url
          end if
      end tell
    end repeat
  on error errorMessage number errorNumber
      if (errorNumber is equal to -609) --Google Chrome got an error: Connection is invalid
          return
      end if
      error errorMessage number errorNumber
  end try
end run
