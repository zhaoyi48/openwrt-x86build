# openwrt-x86build
构建集成openclash
## 如何配置
1. 获取现有openwrt已安装的package
```
echo $(opkg list-installed --strip-abi | sed -e "s/\s.*$//")
```

2. 选择image
- [openwrtorg/imagebuilder](https://hub.docker.com/r/openwrtorg/imagebuilder/tags)

3. 设置相关action-yaml参数值
- image
- rootfs_size
- kernel_size
- packages

## 注意
1. 由于openclash依赖dnsmasq-full，需要在packages中剔除dnsmasq(-dnsmasq)
2. 不同版本openwrt package兼容可能不同。如果出现错误，请查看构建信息。
