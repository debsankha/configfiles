xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output DVI-I-1 --off DP-0 --off HDMI-1-0 --off
xrandr --output DP-0 --auto --rotate left --primary
xrandr --output DVI-I-1 --right-of DP-0
xrandr --output HDMI-1-0 -mode 1280x1024 --below DP-0


#xrandr --output DVI-I-1 -mode 1920x1200
#xrandr --output DP-0 -mode 1280x1024
#xrandr --output HDMI1 -mode 1280x1024


#xrandr --output DVI-I-1 #--right-of DP-0
#xrandr --output HDMI1 --right-of DVI-I-1
#xrandr --output DP-0 --left-of DVI-I-1
#xrandr --output DP-0 --auto --rotate left #--panning 1024x1280 --primary
#xrandr --output DVI-I-1 --auto --right-of DP-0 # --panning 1920x1200
#xrandr --output HDMI1 --auto --primary 
#xrandr --output DVI-I-1 --auto --left-of HDMI1 # --panning 1920x1200
#xrandr --output DP-0 --auto --rotate left --left-of DVI-I-1 #--panning 1024x1280 --primary



#xrandr --output HDMI-0 --auto --right-of DVI-I-1
#xrandr --output HDMI-0 --auto --rotate normal --right-of DVI-I-1
