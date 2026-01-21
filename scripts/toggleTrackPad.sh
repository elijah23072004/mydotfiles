
export STATUS_FILE="$XDG_RUNTIME_DIR/trackpad.status"

enable_trackpad() {
    printf "true" >"$STATUS_FILE"
    notify-send -u normal "Enabling Trackpad"
    hyprctl keyword '$LAPTOP_TP_ENABLED' "true" -r
}

disable_trackpad() {
    printf "false" >"$STATUS_FILE"
    notify-send -u normal "Disabling Trackpad"
    hyprctl keyword '$LAPTOP_TP_ENABLED' "false" -r
}

if ! [ -f "$STATUS_FILE" ]; then
    disable_trackpad
else
  if [ $(cat "$STATUS_FILE") = "true" ]; then
    disable_trackpad
  elif [ $(cat "$STATUS_FILE") = "false" ]; then
    enable_trackpad
  fi
fi


