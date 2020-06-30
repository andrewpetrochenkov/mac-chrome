import setuptools

setuptools.setup(
    name='mac-chrome',
    install_requires=open('requirements.txt').read().splitlines(),
    packages=setuptools.find_packages(),
    scripts=['scripts/.DS_Store','scripts/.chrome-close.applescript','scripts/.chrome-fullscreen-detect.applescript','scripts/.chrome-fullscreen-enter.applescript','scripts/.chrome-fullscreen-exit.applescript','scripts/.chrome-isready.applescript','scripts/.chrome-noisy-tabs.applescript','scripts/.chrome-open.applescript','scripts/.chrome-refresh.applescript','scripts/.chrome-url.applescript','scripts/.chrome-urls.applescript','scripts/chrome','scripts/chrome-close','scripts/chrome-frontmost','scripts/chrome-fullscreen-detect','scripts/chrome-fullscreen-enter','scripts/chrome-fullscreen-exit','scripts/chrome-isready','scripts/chrome-kill','scripts/chrome-noisy-tabs','scripts/chrome-open','scripts/chrome-pid','scripts/chrome-refresh','scripts/chrome-url','scripts/chrome-urls']
)
