#!/bin/sh

.venv/bin/python3 tools/asm-differ/diff.py -smwo3 --line-numbers --max-lines 2048 "$@"