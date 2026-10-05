#!/usr/bin/env bash
# THIS SCRIPT RETURNS THE THEME

cache="$HOME/.cache/theme"
themes_list="themes.txt"

if [ -f "$cache" ]; then
    theme=$(<"$cache")

    if grep -qxF -- "$theme" "$themes_list"; then
        echo "[LOG] theme '$theme' was found!" >&2
    else
        echo "[LOG] not found inside list, returning default!" >&2
        theme="default"
    fi
else
    echo "[LOG] theme file wasn't present, returning default!" >&2
    theme="default"
    echo "$theme" > "$cache"
fi

echo "$theme"

# to fetch the theme in other scripts, use this:
# theme=$(./get-theme.sh)