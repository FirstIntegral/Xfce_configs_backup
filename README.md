Xfce Configuration Backup Script

This repo contains a script to backup important XFCE configuration files and directories. Do this and don't worry about setting everything up all over again in case you ever need to do it.

The backup script currently covers:

    Panel Configurations:
        ~/.config/xfce4/panel/

    Session Settings:
        ~/.config/xfce4/session/

    Window Manager Settings (xfwm4):
        ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml

    Power Manager:
        ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml

    File Manager (Thunar) Configurations:
        ~/.config/Thunar/

    Additional User-specific Configurations:
        ~/.local/share/xfce4/

    Global System-wide Configurations:
        /etc/xdg/xfce4
        /etc/xdg/Thunar/
        /etc/xdg/menus
        /etc/xdg/xdg-xubuntu (specific to Xubuntu)

Usage

    1- Script Execution:
    You can run the xfce_backup.sh script manually to create a backup:

    ./xfce_backup.sh

    2- Automated Backups:
    A cron job has been set up to run this script every day at 9 PM. You can adjust this timing in your crontab if needed.
        crontab -e
        then add the following line to schedule the backup:
        0 21 * * * /path/to/xfce_backup.sh >> /home/yourusername/xfce_backup.log 2>&1

    3- Backup File:
    After execution, the script will generate a .tar.gz file in your home directory with the format xfce_backup_YYYY-MM-DD.tar.gz.

    4- Logs:
    Any output or errors from the cron job will be written to xfce_backup.log in your home directory.

Feel free to submit issues or pull requests if you identify more Xfce configurations to add or other improvements :)