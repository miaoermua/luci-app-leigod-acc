include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-leigodacc
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_CONFIG_DEPENDS:= \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_tc-full \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_kmod-netem \

LUCI_TITLE:=Leigod LuCI interface by miaoermua
LUCI_PKGARCH:=all
LUCI_DEPENDS:= \
	+libpcap +iptables +kmod-ipt-nat +iptables-mod-tproxy +kmod-ipt-tproxy +kmod-netem +tc-full +kmod-ipt-ipset +ipset +miniupnpd +curl

define Package/$(PKG_NAME)/conffiles
/etc/config/shadowsocksr
/etc/ssrplus/
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature