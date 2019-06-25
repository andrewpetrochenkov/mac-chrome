<!--
https://pypi.org/project/readme-generator/
https://pypi.org/project/python-readme-generator/
-->

[![](https://img.shields.io/badge/OS-macOS-blue.svg?longCache=True)]()
[![](https://img.shields.io/badge/language-AppleScript-blue.svg?longCache=True)]()
[![](https://img.shields.io/pypi/v/mac-chrome.svg?maxAge=3600)](https://pypi.org/project/mac-chrome/)
[![](https://img.shields.io/npm/v/mac-chrome.svg?maxAge=3600)](https://www.npmjs.com/package/mac-chrome)
[![Travis](https://api.travis-ci.org/looking-for-a-job/mac-chrome.svg?branch=master)](https://travis-ci.org/looking-for-a-job/mac-chrome/)

#### Installation
```bash
$ [sudo] npm i -g mac-chrome
```
```bash
$ [sudo] pip install mac-chrome
```

#### Scripts usage
command|`usage`
-|-
`chrome` |`usage: chrome command [args]`
[`chrome-close`](# "close tab by url") |`usage: chrome-close url ...`
[`chrome-frontmost`](# "print 1 if 'Google Chrome.app' is frontmost, else 0") |`usage: chrome-frontmost`
[`chrome-fullscreen-detect`](# "print 1 if 'Google Chrome.app' is in fullscreen mode, else 0") |`usage: chrome-fullscreen-detect`
[`chrome-fullscreen-enter`](# "enter fullscreen mode") |`usage: chrome-fullscreen-enter`
[`chrome-fullscreen-exit`](# "exit fullscreen mode") |`usage: chrome-fullscreen-exit`
[`chrome-kill`](# "kill 'Google Chrome.app' process") |`usage: chrome-kill`
[`chrome-noisy-tabs`](# "list tabs with playing audio") |`usage: chrome-noisy-tabs`
[`chrome-open`](# "open url(s)") |`usage: chrome-open url ...`
[`chrome-pid`](# "print 'Google Chrome.app' pid") |`usage: chrome-pid`
[`chrome-refresh`](# "refresh url(s)") |`usage: chrome-refresh url ...`
[`chrome-url`](# "print active url") |`usage: chrome-url`
[`chrome-urls`](# "print urls") |`usage: chrome-urls`

#### Examples
url(s)
```bash
$ chrome urls
https://github.com/
https://google.com/
$ chrome url
https://github.com/
```

open/refresh
```bash
$ chrome open "https://github.com/" "https://google.com/"
$ chrome refresh "https://github.com/"
```

fullscreen
```bash
$ chrome fullscreen-enter
$ chrome fullscreen-detect
1
$ chrome fullscreen-exit
```

frontmost (`1` or `0`)
```bash
$ chrome frontmost
0
```

<p align="center">
    <a href="https://pypi.org/project/python-readme-generator/">python-readme-generator</a>
</p>