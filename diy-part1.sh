#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
#此脚本执行于更新feeds之前

#cd openwrt && ls -a -l -h

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '1i src-git haibo https://github.com/haiibo/openwrt-packages' feeds.conf.default
#echo 'src-git onliner https://github.com/haiibo/packages/luci-app-onliner' >>feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

git clone  https://github.com/bigbugcc/OpenwrtApp package/OpenwrtApp
git clone  https://github.com/destan19/OpenAppFilter package/OpenAppFilter
#git clone  https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot
# vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr

#替换主题
#ls -l && cd openwrt && ls -a -l -h
     #   find ./feeds/ -name "*vlmcsd*" | xargs rm -rf
     #   find ./feeds/ -name "*polipo*" | xargs rm -rf
      #  find ./feeds/ -name "*watchcat*" | xargs rm -rf
      #  find ./feeds/ -name "*serverchan*" | xargs rm -rf
     #   find ./feeds/ -name "*pushbot*" | xargs rm -rf
     #  find ./feeds/ -name "luci-theme-argon" | xargs rm -rf
