#!/usr/bin/env bash

if hyprctl getoption general:layout | grep -q monocle; then
    hyprctl keyword general:layout master
  hyprctl keyword general:col.active_border "rgba(7d82d9ff)"
else
    hyprctl keyword general:layout monocle
    hyprctl keyword general:col.active_border "rgb(ff0000)"
fi

