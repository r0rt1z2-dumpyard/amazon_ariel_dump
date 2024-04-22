#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:6266880:60efbd5681521b01ad1f66f36edeba08e1715bf2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:5810176:5e0edd8db5c9383afc875b6eb6b6fc589d3f9537 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 60efbd5681521b01ad1f66f36edeba08e1715bf2 6266880 5e0edd8db5c9383afc875b6eb6b6fc589d3f9537:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
