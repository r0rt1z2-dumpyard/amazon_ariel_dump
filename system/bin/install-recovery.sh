#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:6434816:9ab6dd5e16af67a1db42baee44ff0e63c39e97da; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:5976064:7061fac91af2ee7d258220136cc8f6bd86636081 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 9ab6dd5e16af67a1db42baee44ff0e63c39e97da 6434816 7061fac91af2ee7d258220136cc8f6bd86636081:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
