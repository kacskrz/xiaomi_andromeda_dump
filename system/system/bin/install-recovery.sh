#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:26d14fb8f01d8b6bf2fd37af1506ab4a6482de09; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:404e993aee97776784b702513a682d03f279a3c1 EMMC:/dev/block/bootdevice/by-name/recovery 26d14fb8f01d8b6bf2fd37af1506ab4a6482de09 67108864 404e993aee97776784b702513a682d03f279a3c1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
