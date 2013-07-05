Skrypty
=======

Set of bash scripts helping running games on Linux (native and WINE). For nvidia users mostly.

Please modify those scripts for your own need cause they're created for my config (especially gamemode.sh)!

How can they help?
----

xwine - runs WINE application in the new X session which is closed when application stops working. 
It's great help in DE which use compositing (like GNOME,Cinnamon,KDE). Usage: xwine "dir" "app"

run_anywingame - runs WINE application in current X session with default winecfg settings. Usage: run_anywingame "dir" "app"

run_anylingame - runs Linux application in current X session. Usage: run_anylingame "/path/to/app"

run_newdesktopgame - runs WINE application in current X session with virtual desktop (set to 1920x1080). Helpful in some cases (like WarCraft 3).

gamemode.sh - additional tweaks for performance. Command "gm 1" is ran automatically in other scripts. Use "gm 0" to redo changes.

How to start:
----

1. Clone git

  git clone https://github.com/dRaiser/Skrypty.git
  
2. gamelauncher.sh - link as /usr/bin/gm

eg.
   sudo ln -s /home/$USER/Skrypty/gamelaunchers/gamemode.sh /usr/bin/gm

3. link scripts you want to /usr/bin

   sudo ln -s /home/$USER/Skrypty/gamelaunchers/run_anylingame.sh /usr/bin/run_anylingame
   
   sudo ln -s /home/$USER/Skrypty/gamelaunchers/run_anywingame.sh /usr/bin/run_anywingame
   
   sudo ln -s /home/$USER/Skrypty/gamelaunchers/xwine /usr/bin/xwine
   
   sudo ln -s /home/$USER/Skrypty/gamelaunchers/run_newdesktopgame /usr/bin/run_newdesktopgame
