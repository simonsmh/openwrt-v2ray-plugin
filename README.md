V2ray-plugin for OpenWrt
===

简介
---
 - [v2ray-plugin][V]

   Yet another SIP003 plugin for shadowsocks, based on v2ray


编译
---

 - 从 OpenWrt 的 [SDK][S] 编译

   ```bash
   # 以 ramips 平台为例
   tar xJf openwrt-sdk-19.07.0-ramips-mt7621_gcc-7.5.0_musl.Linux-x86_64.tar.xz
   cd openwrt-sdk-*-ramips-*
   # 安装编译依赖
   ./scripts/feeds update -a
   ./scripts/feeds install golang
   # 获取 v2ray-plugin Makefile
   git clone https://github.com/simonsmh/openwrt-v2ray-plugin package/v2ray-plugin
   # 选择要编译的包 Network -> v2ray-plugin
   make menuconfig
   # 开始编译
   make package/v2ray-plugin/compile V=99
   ```


  [S]: https://openwrt.org/docs/guide-developer/using_the_sdk#obtain_the_sdk
  [V]: https://github.com/shadowsocks/v2ray-plugin
