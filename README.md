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
`chrome-close` |`usage: chrome-close url ...`
`chrome-fullscreen-detect` |`usage: chrome-fullscreen-detect`
`chrome-fullscreen-enter` |`usage: chrome-fullscreen-enter`
`chrome-fullscreen-exit` |`usage: chrome-fullscreen-exit`
`chrome-kill` |`usage: chrome-kill`
`chrome-noisy-tabs` |`usage: chrome-noisy-tabs`
`chrome-open` |`usage: chrome-open url ...`
`chrome-pid` |`usage: chrome-pid`
`chrome-refresh` |`usage: chrome-refresh url ...`
`chrome-url` |`usage: chrome-url`
`chrome-urls` |`usage: chrome-urls`

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

<p align="center">
    <a href="https://pypi.org/project/python-readme-generator/">python-readme-generator</a>
</p>