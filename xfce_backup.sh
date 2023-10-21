#!/usr/bin/env zsh

# backup directory and backup filename variables
BACKUP_DIR="$HOME"
BACKUP_FILENAME="xfce_backup_$(date '+%Y-%m-%d').tar.gz"

# listing the files/file paths for the backup
FILES_TO_BACKUP=(
  "$HOME/.config/xfce4/panel/"
  "$HOME/.config/xfce4/session/"
  "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml"
  "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml"
  "$HOME/.local/share/xfce4/"
  "$HOME/.config/Thunar/"
  "/etc/xdg/xfce4"
  "/etc/xdg/Thunar/"
  "/etc/xdg/menus"
  "/etc/xdg/xdg-xubuntu"
)

# creating the backup
tar czf "$BACKUP_DIR/$BACKUP_FILENAME" "${FILES_TO_BACKUP[@]}"

echo "Backup completed and stored in $BACKUP_DIR/$BACKUP_FILENAME"
