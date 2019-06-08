#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; chrome open "https://github.com"  "https://www.youtube.com" )
