#!/usr/bin/osascript

property _TIMEOUT_APP: 5

try
  with timeout of _TIMEOUT_APP seconds
    tell application "Google Chrome"
        if count of windows is not 0 then return URL of active tab of first window
    end tell
  end timeout
on error errorMessage number errorNumber
  --Connection is invalid. (-609)
  if (errorNumber is in {-609}) then return
  error errorMessage number errorNumber
end try
