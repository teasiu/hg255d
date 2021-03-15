#!/bin/bash
if [ -d tmp ];then
	rm -rf tmp && rm .config .config.old
fi
./scripts/feeds update -a
./scripts/feeds install -a
./scripts/feeds install -a
cp -Rf diy/app package/
rm -rf feeds/oldpackages/net/pdnsd
cp -a diy/index.html feeds/luci/modules/base/root/www
cp -a diy/base.po feeds/luci/po/zh_CN/
cp -a diy/flashops.htm feeds/luci/modules/admin-full/luasrc/view/admin_system/
cp -a diy/index.htm feeds/luci/modules/admin-full/luasrc/view/admin_status/
cp -a diy/luci feeds/luci/modules/base/root/etc/config
cp -a diy/autossh.config feeds/oldpackages/net/autossh/files
cp -rf diy/resources/* feeds/luci/modules/base/htdocs/luci-static/resources/
cp -rf diy/bootstrap/* feeds/luci/themes/bootstrap/htdocs/luci-static/bootstrap/
cp -a diy/footer.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/header.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/indexer.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/sysauth.htm feeds/luci/modules/base/luasrc/view
cp -a diy/nfsd.exports feeds/packages/net/nfs-kernel-server/files
cp -a diy/dnsmasq.conf package/network/services/dnsmasq/files/
cp -a diy/dhcp.conf package/network/services/dnsmasq/files/
./scripts/feeds install -a
#cp -a hg255d.config .config
#mkdir dl
#cp -a diy/download/* dl/
#wget -O dl/linux-firmware-2014-06-04-7f388b4885cf64d6b7833612052d20d4197af96f.tar.bz2 http://www.ecoo.top:8082/openwrtdl/linux-firmware-2014-06-04-7f388b4885cf64d6b7833612052d20d4197af96f.tar.bz2
#make defconfig
#make -j5

