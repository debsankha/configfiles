function suspend {
    xscreensaver-command -lock &
    sleep 1

    if [ -f /usr/bin/systemctl ]; then
        # Systemd solution
        systemctl suspend
    else
        #ConsoleKit/Dbus solution for suspending
        dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend &
    fi

    sleep 2
    setxkbmap us
    xmodmap $HOME/.Xmodmap
    exit 0;
}

function shutdown {
    if [ -f /usr/bin/systemctl ]; then
        # Systemd solution
        systemctl poweroff
    else
        #ConsoleKit/Dbus solution for suspending
        dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop &
    fi
    exit 0;
}

function reboot {
    if [ -f /usr/bin/systemctl ]; then
        # Systemd solution
        systemctl reboot
    else
        #ConsoleKit/Dbus solution for suspending
        dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart &
    fi
    exit 0;
}

if [ "$1" == "suspend" ]; then
    suspend
elif [ "$1" == "reboot" ]; then
    reboot
elif [ "$1" == "shutdown" ]; then
    shutdown
fi

