#!/bin/bash

OPTIND=1
string_args="$*"
args_trimmed=${string_args:2} #remove the flag
SEARCH_URL_BEGIN="https://duckduckgo.com/?t=lm&q="
SEARCH_URL_END="&ia=web"

while getopts "sw" opt; do
    case "$opt" in
        w)
            if [ -z $args_trimmed ]; then
	            firefox --new-tab "https://duckduckgo.com/"	&
            else 
	            firefox --new-tab "${SEARCH_URL_BEGIN}${args_trimmed}${SEARCH_URL_END}" &
            fi
            exit 1
            ;;
        s)
            firefox --search "$args_trimmed" &
            ;;
        *)
            echo "Invalid arg supplied"
            exit 1
            ;;
    esac
done
