#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:40146deea7aea1ef240288b3dc7f70289fbf6aa2; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:c268a0d94f9ebb59964cc86eaa4f76b576326047 EMMC:/dev/block/bootdevice/by-name/recovery 40146deea7aea1ef240288b3dc7f70289fbf6aa2 67108864 c268a0d94f9ebb59964cc86eaa4f76b576326047:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
