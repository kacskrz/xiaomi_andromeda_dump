#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:90c7bffb4fd80efe7ed819304cc6c431114f688e; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:2a0a268836750e3a89cc6d7fb433696a1c80bf53 EMMC:/dev/block/bootdevice/by-name/recovery 90c7bffb4fd80efe7ed819304cc6c431114f688e 67108864 2a0a268836750e3a89cc6d7fb433696a1c80bf53:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
