include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-admconf
PKG_RELEASE:=1.1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-admconf
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=LuCI Support for ADMINCONFedit
  DEPENDS:=+wget +curl +openssl-util +fdisk +wol +bash +vlmcsd
  MAINTAINER:= teasiu <teasiu123@gmail.com>
endef

define Package/luci-app-admconf/description
	luci-app-admconf
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-admconf/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,luci-app-admconf))
