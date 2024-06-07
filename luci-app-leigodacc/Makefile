include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-leigodacc
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_CONFIG_DEPENDS:= \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_tc-full \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_kmod-netem \

LUCI_TITLE:=SS/SSR/V2Ray/Trojan/NaiveProxy/Tuic/ShadowTLS/Hysteria/Socks5/Tun LuCI interface
LUCI_PKGARCH:=all
LUCI_DEPENDS:= \
	+libpcap +iptables +kmod-ipt-nat +iptables-mod-tproxy +kmod-ipt-tproxy +kmod-netem +tc-full +kmod-ipt-ipset +ipset +curl
	+PACKAGE_$(PKG_NAME)_INCLUDE_tc-full:tc-full \
	+PACKAGE_$(PKG_NAME)_INCLUDE_kmod-netem:kmod-netem \

define Package/$(PKG_NAME)/conffiles
/etc/config/shadowsocksr
/etc/ssrplus/
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature