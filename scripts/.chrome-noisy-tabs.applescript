#!/usr/bin/osascript

try
  tell application "Google Chrome"
    repeat with w in every window
      repeat with t in every tab of w
        with timeout of 1 seconds
          tell t
            set is_playing to execute javascript "!!Array.prototype.find.call(document.querySelectorAll('audio,video'),function(elem){return elem.duration > 0 && !elem.paused})"
            if is_playing is true then
                log (get url of t)
            end if
          end tell
        end timeout
      end repeat
    end repeat
  end tell
on error errorMessage number errorNumber
  if (errorNumber is equal to -609) --Connection is invalid
    return
  end if
  error errorMessage number errorNumber
end try
