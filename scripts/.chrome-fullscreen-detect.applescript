#!/usr/bin/osascript

try
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
on error errorMessage number errorNumber
  if (errorNumber is equal to -609) -- Connection is invalid
    return
  end if
  error errorMessage number errorNumber
end try
