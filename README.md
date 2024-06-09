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
- 小米R3G  5.4/5.10内核 超频 重启难进系统，需要恢复出厂；2.4G无线中继没网，只能用5G中继
