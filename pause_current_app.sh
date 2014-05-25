#!/bin/sh
#by dRaiser
#http://draiser.net

active_window_id=$(xdotool getactivewindow)
active_window_pid=$(xdotool getwindowpid "$active_window_id")
kill -n 19 $active_window_pid
