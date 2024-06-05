## 主用openwrt 在线编译

- CR660X  X86_64

- 使用 GitHub Actions 编译openwrt


## openwrt diy
- find ./feeds/ -name "*theme-argon*" | xargs rm -rf

- df -hT && ls -alh && free -h && cat /proc/cpuinfo
- make defconfig
- make download -j$(nproc)
- make -j$(nproc) V=s

- themes: ifit  neobird  argonne

- kernel: 5_

- 登陆信息: 192.168.5.1  password

- https://github.com/ipatpat/xiaomi_R3G_Openwrt
- https://github.com/MuTong233/OpenWRT_R3G_Trad/releases
