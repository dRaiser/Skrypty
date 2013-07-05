#!/bin/sh
#by dRaiser
#http://draiser.net

gm 1
cd "$1"
WINEDEBUG=-all wine start "$2"
