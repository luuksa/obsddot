export ENV=$HOME/.kshrc
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1

xrdb -merge $HOME/.Xresources
picom --backend glx --vsync -b &
xwallpaper --zoom /home/luuksa/wallpaper/4lzxjw.png &
slstatus &
sct 4500 &
xbacklight -set 50 &
ulimit -Sc 0 &
xset b off &

# enable scrolling with trackpoint and middle button
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

exec dwm
