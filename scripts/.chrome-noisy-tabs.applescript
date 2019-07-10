#!/usr/bin/osascript

try
  set _APP_TIMEOUT to 5
  if ("CHROME_TIMEOUT" is in system attribute) then
    set _APP_TIMEOUT to (system attribute "CHROME_TIMEOUT") as integer
  end if

  with timeout of _APP_TIMEOUT seconds
    tell application "Google Chrome"
      repeat with w in every window
        repeat with t in every tab of w
          tell t
            if loading of t is false then
              set is_playing to execute javascript "!!Array.prototype.find.call(document.querySelectorAll('audio,video'),function(elem){return elem.duration > 0 && !elem.paused})"
              if is_playing is true then
                  log (get url of t)
              end if
            end if
          end tell
        end repeat
      end repeat
    end tell
  end timeout
on error errorMessage number errorNumber
  --Connection is invalid. (-609)
  if (errorNumber is in {-609}) then return
  error errorMessage number errorNumber
end try
