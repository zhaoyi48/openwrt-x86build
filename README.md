# openwrt-x86build
本构建集成openclash ipk

现有文档说明不局限于x86架构构建

## 如何配置
1. 获取现有openwrt已安装的package
```
echo $(opkg list-installed --strip-abi | sed -e "s/\s.*$//")
```

2. 选择image
- [openwrtorg/imagebuilder](https://hub.docker.com/r/openwrtorg/imagebuilder/tags)

3. 设置相关action-yml参数值
- image
- rootfs_size
- kernel_size
- packages
- tar压缩文件路径
- path

4. 执行构建，获取管道构建文件

## 相关参考
[Using the Image Builder](https://openwrt.org/docs/guide-user/additional-software/imagebuilder)
[OpenClash依赖](https://github.com/vernesong/OpenClash)

## 注意
1. 由于openclash依赖dnsmasq-full，需要在packages中剔除dnsmasq(-dnsmasq)
2. 不同版本openwrt package兼容可能不同。如果出现错误，请查看构建信息。
