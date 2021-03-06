
include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-ngrokc
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-ngrokc
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:= luci-app-ngrokc
  DEPENDS:=+ngrokc +libc +libpthread +libopenssl +libstdcpp
  MAINTAINER:= teasiu <teasiu123@gmail.com>
endef

define Package/luci-app-ngrokc/description
	LuCi ngrokc
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

# Fixme: How can we add <%+ocserv_status%> in view/admin_status/index.htm?
define Package/luci-app-ngrokc/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,luci-app-ngrokc))

