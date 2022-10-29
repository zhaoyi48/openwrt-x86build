# openwrt-x86build

1. 获取现有已安装的package
`echo $(opkg list-installed --strip-abi | sed -e "s/\s.*$//")`
2. 选择image
