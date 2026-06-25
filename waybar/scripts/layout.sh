#!/bin/bash

layout=$(hyprctl activeworkspace -j | jq -r '.tiledLayout')

case "$layout" in
    master)
        echo "  Master"
        ;;
    monocle)
        echo "  Monocle"
        ;;
    *)
        echo "󰕰 $layout"
        ;;
esac

