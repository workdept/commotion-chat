# Simple openwrt package to put some files in some places
# i.e. provide a menu link, html page, and related assets

include $(TOPDIR)/rules.mk

MODULE_NAME:=commotionchat
MODULE_TITLE:=Commotion Chat

PKG_NAME:=commotionchat
PKG_VERSION:=0.0.1
PKG_RELEASE:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/commotionchat
  SECTION:=commotion-apps
  CATEGORY:=Commotion-apps
  DEPENDS:=+ws-routing
  URL:=http://theworkdept.com/
  TITLE:=Commotion Chat example app
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/commotionchat/description
	Commotion Chat example app - provides chat app via luci
endef

define Package/commotionchat/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller/commotionchat
	$(CP) -a ./luasrc/controller/commotionchat/* $(1)/usr/lib/lua/luci/controller/commotionchat/ 2>/dev/null || true
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/commotionchat
	$(CP) -a ./luasrc/view/commotionchat/* $(1)/usr/lib/lua/luci/view/commotionchat/ 2>/dev/null || true

	$(INSTALL_DIR) $(1)/www/luci-static/resources/
	$(CP) -a ./htdocs/luci-static/* $(1)/www/luci-static/ 2>/dev/null || true
endef

$(eval $(call BuildPackage,commotionchat))
