include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  PKG_NAME:=luci-app-leigodacc
  SUBMENU:=3. Applications
  PKG_VERSION:=1.0.0
  PKG_RELEASE:=1
  TITLE:=Leigod LuCI interface by miaoermua
  DEPENDS:=+bash +coreutils +wget +curl +lua +libpcap +iptables +kmod-ipt-nat +iptables-mod-tproxy +kmod-ipt-tproxy +kmod-netem +tc-full +kmod-ipt-ipset +ipset +miniupnpd +curl
endef
define Package/$(PKG_NAME)/description
  This package provides LuCI support for Leigod ACC plugin.
endef

define Build/Compile
  $(STAGING_DIR_HOST)/bin/po2lmo ./po/zh-cn/leigodacc.po $(PKG_BUILD_DIR)/leigodacc.zh-cn.lmo
endef

define Package/$(PKG_NAME)/install
  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/acc.lua $(1)/usr/lib/lua/luci/controller/acc.lua

  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/leigodacc
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/service.lua $(1)/usr/lib/lua/luci/model/cbi/leigodacc/service.lua
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/device.lua $(1)/usr/lib/lua/luci/model/cbi/leigodacc/device.lua
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/notice.lua $(1)/usr/lib/lua/luci/model/cbi/leigodacc/notice.lua

  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/leigodacc
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/notice.htm $(1)/usr/lib/lua/luci/view/leigodacc/notice.htm
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/service.htm $(1)/usr/lib/lua/luci/view/leigodacc/service.htm

  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/leigodacc.zh-cn.lmo $(1)/usr/lib/lua/luci/i18n/leigodacc.zh-cn.lmo

  $(INSTALL_DIR) $(1)/usr/sbin/leigodacc
  $(INSTALL_BIN) $(PKG_BUILD_DIR)/acc-gw.linux.amd64 $(1)/usr/sbin/leigodacc/acc-gw.linux.amd64
  $(INSTALL_BIN) $(PKG_BUILD_DIR)/leigod_uninstall.sh $(1)/usr/sbin/leigodacc/leigod_uninstall.sh
  $(INSTALL_BIN) $(PKG_BUILD_DIR)/plugin_common.sh $(1)/usr/sbin/leigodacc/plugin_common.sh
  $(INSTALL_DATA) $(PKG_BUILD_DIR)/version $(1)/usr/sbin/leigodacc/version
endef

define Package/$(PKG_NAME)/prerm
#!/bin/sh
  /etc/init.d/acc disable
  /etc/init.d/acc stop
  rm /etc/init.d/acc
endef

define Package/$(PKG_NAME)/postrm
#!/bin/sh
  /etc/init.d/acc disable
  /etc/init.d/acc stop
  rm /etc/init.d/acc
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
