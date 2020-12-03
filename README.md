<!--
https://readme42.com
-->



[![](https://img.shields.io/badge/OS-macOS-blue.svg?longCache=True)]()
[![](https://img.shields.io/pypi/v/mac-chrome.svg?maxAge=3600)](https://pypi.org/project/mac-chrome/)
[![](https://img.shields.io/npm/v/mac-chrome.svg?maxAge=3600)](https://www.npmjs.com/package/mac-chrome)[![](https://img.shields.io/badge/License-Unlicense-blue.svg?longCache=True)](https://unlicense.org/)
[![](https://github.com/andrewp-as-is/mac-chrome/workflows/tests42/badge.svg)](https://github.com/andrewp-as-is/mac-chrome/actions)

### Installation
```bash
$ [sudo] pip install mac-chrome
```

```bash
$ [sudo] npm i -g mac-chrome
```

#### Config
```bash
$ export CHROME_TIMEOUT=10 # 5 by default
```

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

`Google Chrome.app` process
```bash
$ chrome pid
42
$ chrome isready 5 # timeout 5 seconds
1
$ chrome kill
```

<p align="center">
    <a href="https://readme42.com/">readme42.com</a>
</p>
