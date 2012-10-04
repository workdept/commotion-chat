# Simple openwrt package to put some files in some places
# i.e. provide a menu link, html page, and related assets

include $(TOPDIR)/rules.mk

MODULE_NAME:=commotion-chat
MODULE_TITLE:=Commotion Chat

PKG_NAME:=$(MODULE_NAME)
PKG_VERSION:=0.0.1
PKG_RELEASE:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/$(MODULE_NAME)
  SECTION:=commotion-apps
  CATEGORY:=Commotion-apps
  DEPENDS:=+commotionbase +ws-routing
  URL:=http://theworkdept.com/
  TITLE:=Commotion Chat example app
endef

define Build/Configure
endef

define Package/$(MODULE_NAME)/description
  Commotion Chat example app - provides chat app via luci
endef

define Package/$(MODULE_NAME)/insatll
  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller/$(MODULE_NAME)
  $(CP) -a .luasrc/controller/$(MODULE_NAME)/* $(1)/usr/lib/lua/luci/controller/$(MODULE_NAME)/ 2>/dev/null | true
  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/$(MODULE_NAME)
  $(CP) -a ./luasrc/view/$(MODULE_NAME)/* $(1)/usr/lib/lua/luci/view/$(MODULE_NAME)/ 2>/dev/null || true

  $(INSTALL_DIR) $(1)/www/luci-static/resources/
  $(CP) -a ./htdocs/luci-static/* $(1)/www/luci-static/ 2>/dev/null || true
endef

define Package/$(MODULE_NAME)/postinst
endef

$(eval $(call BuildPackage,$(MODULE_NAME))
