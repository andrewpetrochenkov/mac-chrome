#!/usr/bin/osascript

property _TIMEOUT_APP: 5

try
  with timeout of _TIMEOUT_APP seconds
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
