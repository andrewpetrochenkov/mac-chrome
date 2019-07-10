#!/usr/bin/osascript

try
  set _APP_TIMEOUT to 5
  if ("CHROME_TIMEOUT" is in system attribute) then
    set _APP_TIMEOUT to (system attribute "CHROME_TIMEOUT") as integer
  end if

  with timeout of _APP_TIMEOUT seconds
    tell application "Google Chrome" to activate
    tell application "System Events"
      keystroke "f" using {command down, control down}
    end tell
  end timeout
on error errorMessage number errorNumber
  --Connection is invalid. (-609)
  if (errorNumber is in {-609}) then return
  error errorMessage number errorNumber
end try
