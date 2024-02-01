#!/bin/bash
#
#此脚本执行于加载自定义config之时

#cd openwrt && ls -a -l -h

#!/bin/sh
#修改登录IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
#修改主机名
sed -i 's/OpenWrt/BigD/g' openwrt/package/base-files/files/bin/config_generate

#设置WIFI
sed -i 's/OpenWrt/Godlike/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/wireless.radio${devidx}.disabled=1/wireless.radio${devidx}.disabled=0/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/wireless.radio${devidx}.country=US/wireless.radio${devidx}.country=CN/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/wireless.default_radio${devidx}.encryption=none/wireless.default_radio${devidx}.encryption=psk-mixed/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/encryption/a\set wireless.default_radio${devidx}.key=13572468' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh

#切换ramips内核到5.4/5.10并超频
sed -i '/KERNEL_PATCHVER/cKERNEL_PATCHVER:=5.15' openwrt/target/linux/bcm53xx/Makefile
sed -i '/KERNEL_PATCHVER/cKERNEL_PATCHVER:=5.10' openwrt/target/linux/ramips/Makefile
#cp -rf extra/102-mt7621-fix-cpu-clk-add-clkdev.patch openwrt/target/linux/ramips/patches-5.4/102-mt7621-fix-cpu-clk-add-clkdev.patch
#cp -rf extra/322-mt7621-fix-cpu-clk-add-clkdev.patch openwrt/target/linux/ramips/patches-5.10/322-mt7621-fix-cpu-clk-add-clkdev.patch

#更换banner
cp -rf banner openwrt/package/base-files/files/etc/banner
#更换主题背景
cp -rf extra/bg1.jpg openwrt/feeds/kenzo/luci-theme-argonne/htdocs/luci-static/argonne/img/bg1.jpg
rm -rf openwrt/feeds/kenzo/luci-theme-argonne/README.md
cp -rf extra/main_bg.jpg openwrt/feeds/kenzo/luci-theme-ifit/files/htdocs/images/main_bg.jpg
cp -rf extra/main_bg_5k.jpg openwrt/feeds/kenzo/luci-theme-ifit/files/htdocs/images/main_bg_5k.jpg
#更换主题neobird快捷应用栏
#sed -i 's/shadowsocksr/vssr/g' openwrt/feeds/kenzo/luci-theme-neobird/luasrc/view/themes/neobird/header.htm
