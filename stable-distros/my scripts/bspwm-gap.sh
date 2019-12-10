#!/bin/sh
echo "Enter gap number" | dmenu   | xargs -I {} bspc config window_gap "{}"
