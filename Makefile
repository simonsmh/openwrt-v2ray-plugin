#
# Copyright (C) 2020 Simon Shi <simonsmh@gmail.com>
#
# This is free software, licensed under the MIT License.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=v2ray-plugin
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/shadowsocks/v2ray-plugin.git
PKG_SOURCE_VERSION:=b9717056b251747149cacb44458fe02e420b9d9b

PKG_MAINTAINER:=Simon Shi <simonsmh@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/shadowsocks/v2ray-plugin

GO_PKG_LDFLAGS:=-s -w
GO_PKG_LDFLAGS_X:=main.VERSION=$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/v2ray-plugin
    SECTION:=net
    CATEGORY:=Network
    SUBMENU:=Web Servers/Proxies
    TITLE:=SIP003 plugin for shadowsocks, based on v2ray
    URL:=https://github.com/shadowsocks/v2ray-plugin
    DEPENDS:=$(GO_ARCH_DEPENDS)
endef

define Package/v2ray-plugin/description
    Yet another SIP003 plugin for shadowsocks, based on v2ray
endef

$(eval $(call GoBinPackage,v2ray-plugin))
$(eval $(call BuildPackage,v2ray-plugin))
