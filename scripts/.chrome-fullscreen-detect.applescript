#!/usr/bin/osascript

try
  set _APP_TIMEOUT to 5
  if ("CHROME_TIMEOUT" is in system attribute) then
    set _APP_TIMEOUT to (system attribute "CHROME_TIMEOUT") as integer
  end if

  with timeout of _APP_TIMEOUT seconds
    tell application "Google Chrome"
      set fullscreen to false
      if count of windows is not 0 then
        set {x,y,width, height} to bounds of front window
        set fullscreen to x is 0 and y is 0
      end if
      if fullscreen then
        return 1
      else
        return 0
      end if
    end tell
  end timeout
on error errorMessage number errorNumber
  --Connection is invalid. (-609)
  if (errorNumber is in {-609}) then return
  error errorMessage number errorNumber
end try
