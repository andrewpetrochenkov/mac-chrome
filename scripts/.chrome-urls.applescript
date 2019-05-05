#!/usr/bin/osascript

tell application "Google Chrome"
  repeat with w in  every window
    repeat with t in every tab in w
      log (URL of t as text)
      end repeat
  end repeat
end tell
