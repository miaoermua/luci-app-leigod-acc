# luci-app-leigod-acc

基于雷神加速器官方的 OpenWrt 修改版本，原仓库 [Lean's LEDE](https://github.com/coolsnowwolf/lede/tree/master/package/lean) 剥离独立的雷神加速器插件仓库

基于官方插件修改加入优化和翻译，优化安装过程方便开发者进行集成。

![](https://fastly.jsdelivr.net/gh/miaoermua/static@main/blog/24-08-13/catwrt-v24.9-leigod.webp)

> 插件暂不支持 luci2（js） nft fw4

## to do

- [ ] 修复自动暂停无法提交到计划任务

如果你想支持我们开发，请使用在雷神加速器桌面版客户端，使用我的专属雷神加速器口令 `miaoer`

或访问 [赞助](https://www.miaoer.net/sponsor) 页面进行赞助支持

<p align="center">
<img src="https://fastly.jsdelivr.net/gh/miaoermua/static@main/images/sponsor-leigod.webp">
</p>


## 使用指南

编译此项目，安装或集成到 OpenWrt 上，选择 Tun 模式

可选项：确定其他代理插件未开启，或与雷神插件使用非相同模式，例如小猫咪中选择兼容模式（非 FakeIP) 并且不选择开启 TUN 模式，让雷神开启 TUN 模式即可完成代理和加速器共存，其他插件暂无测试。

雷神中的设备定义由 Luci 界面和程序自动决定和识别，在使用插件时应当关闭局域网设备的 “随机 MAC 地址” 让插件自动识别，也可以手动在插件中定义。

手机 APP 的角色是选择加速的游戏和连接路由器插件，可以执行切换游戏加速和暂停游戏时长的消耗。

### 网络连接

OpenWrt 路由器需要支持 UPnP 组件或插件，如果你使用软路由，请将无线路由器调整为 “AP 模式” “有线中继模式”……插件会优先识别你当前局域网的 UPnP 设备来检测是否开启了 Leigod-acc

## more

https://github.com/miaoermua/openwrt-leigodacc-manager

https://www.miaoer.net/posts/blog/openwrt-leigodacc-manager

https://www.miaoer.net/posts/blog/leigod-acc-router-plugin

### 协议

本项目你可以自由修改或 PR，使用或集成需要标注原作者并且遵守开源协议，专有二进制文件由 雷神（武汉）网络技术有限公司 所有。

---

感谢: [@coolsnowwolf](https://github.com/coolsnowwolf) | [@aiamadeus](https://github.com/aiamadeus)
