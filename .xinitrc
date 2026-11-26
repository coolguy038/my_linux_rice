#!/bin/sh
export QT_QPA_PLATFORMTHEME=qt6ct
unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR
exec dbus-launch --exit-with-session qtile start
