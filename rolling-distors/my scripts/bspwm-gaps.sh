#!/bin/sh

echo " Enter gaps number: " | dmenu | xargs -I {} bspc config window_gap "{}"
