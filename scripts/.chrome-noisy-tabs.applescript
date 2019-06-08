#!/usr/bin/osascript

tell application "Google Chrome"
    repeat with w in every window
        repeat with t in every tab of w
            tell t
                set is_playing to execute javascript "!!Array.prototype.find.call(document.querySelectorAll('audio,video'),function(elem){return elem.duration > 0 && !elem.paused})"
                if is_playing is true then
                    log (get url of t)
                end if
            end tell
        end repeat
    end repeat
end tell
