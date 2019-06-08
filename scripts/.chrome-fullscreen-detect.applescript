#!/usr/bin/osascript

on run argv
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
end run
