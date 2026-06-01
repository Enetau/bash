if [[ "$(tty)" == /dev/tty1 ]]; then
  exec Hyprland
fi

if [[ -n "$WAYLAND_DISPLAY" && -f ~/.bashrc ]]; then
  . ~/.bashrc
fi
