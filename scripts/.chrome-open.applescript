#!/usr/bin/osascript

on run argv
    tell application "Google Chrome"
        repeat with _url in argv
            repeat with w in  every window
                set tab_i to 0
                repeat with t in every tab in w
                set tab_i to (tab_i+1)
                  if (URL of t) is _url then
                      tell t to reload
                      set index of w to 1 --activate window
                      tell w to set active tab index to tab_i --activate tab
                    end if
                    return
                  end if
                end repeat
            end repeat
            open location _url
        end repeat
    end tell
end run
