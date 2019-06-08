#!/usr/bin/env bash
{ set +x; } 2>/dev/null

url="$(chrome url)" || exit
( set -x; chrome refresh "$url" ) || exit

( set -x; sleep 5 )
urls="$(chrome urls)" || exit
IFS=$'\n';set $urls
( set -x; chrome refresh "$@" ) || exit
