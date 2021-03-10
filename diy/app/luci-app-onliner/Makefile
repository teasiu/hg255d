# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-onliner
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-onliner
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=luci-app-onliner
  DEPENDS:=
  MAINTAINER:= teasiu <teasiu123@gmail.com>
endef

define Package/luci-app-onliner/description
	luci-app-onliner
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-onliner/install
	$(CP) ./files/* $(1)/
endef

define Package/luci-app-onliner/postinst
#!/bin/sh
	rm -f /tmp/luci-indexcache
	rm -f /tmp/luci-modulecache/*
	chmod -R 755 /usr/share/onliner/*
exit 0
endef
$(eval $(call BuildPackage,$(PKG_NAME)))

