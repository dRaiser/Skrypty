if [ $1 == 1 ]; then
	pkill geary
	pkill owncloud
	rm /home/draiser/.local/share/data/ownCloud/lock
	gsettings set org.cinnamon panel-autohide true
	sudo cpupower frequency-set -g performance
	export SDL_VIDEO_FULLSCREEN_DISPLAY=0
	export LD_PRELOAD="libpthread.so.0 libGL.so.1"
	export __GL_THREADED_OPTIMIZATIONS=1
elif [ $1 == 0 ]; then
	geary &
	turnonleftmonitor
	sleep 2
	devilspie -a > /dev/null 2>&1 &
	sh /home/draiser/Skrypty/restart_conky.sh > /dev/null 2>&1 &
	gsettings set org.cinnamon panel-autohide false
	sudo cpupower frequency-set -g ondemand
	xrandr --output DVI-I-2 --mode 1920x1080
fi
