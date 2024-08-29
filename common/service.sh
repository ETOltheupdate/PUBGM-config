#!/system/bin/sh
# Magisk module service script

PUBG_SETTINGS_PATH="/data/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini"
MAGISK_SETTINGS_PATH="/system/etc/pubg/UserSettings.ini"

# Create necessary directories
mkdir -p $(dirname "$PUBG_SETTINGS_PATH")

# Bind the UserSettings.ini file to make it read-only
mount --bind "$MAGISK_SETTINGS_PATH" "$PUBG_SETTINGS_PATH"

