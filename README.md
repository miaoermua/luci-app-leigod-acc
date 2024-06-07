# luci-app-leigodacc

基于雷神加速器 OpenWrt 测试版本

文件结构

```file
/usr/lib/lua/luci
 | - /controller/acc.lua
 | - /model/cbi/leigod/service.lua
 | - /model/cbi/leigod/device.lua
 | - /model/cbi/leigod/notice.lua
 | - /view/leigod/notice.htm
 | - /view/leigod/service.htm
 | - /i18n/acc.zh-cn.lmo

/usr/sbin/leigod
 | -acc-gw.linux.amd64
 | -leigod_uninstall.sh
 | -plugin_common.sh
 | -version
```