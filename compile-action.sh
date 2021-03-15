#!/bin/bash
./scripts/feeds update -a
./scripts/feeds install -a
./scripts/feeds update -a
./scripts/feeds install -a
cp -Rf diy/app package/
rm -rf feeds/oldpackages/net/pdnsd
cp -a diy/index.html feeds/luci/modules/base/root/www
cp -a diy/luci feeds/luci/modules/base/root/etc/config
cp -a diy/base.po feeds/luci/po/zh_CN/
cp -a diy/flashops.htm feeds/luci/modules/admin-full/luasrc/view/admin_system/
cp -a diy/index.htm feeds/luci/modules/admin-full/luasrc/view/admin_status/
cp -a diy/autossh.config feeds/oldpackages/net/autossh/files
cp -rf diy/resources/* feeds/luci/modules/base/htdocs/luci-static/resources/
cp -rf diy/bootstrap/* feeds/luci/themes/bootstrap/htdocs/luci-static/bootstrap/
cp -a diy/footer.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/header.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/indexer.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/sysauth.htm feeds/luci/modules/base/luasrc/view
cp -a diy/nfsd.exports feeds/packages/net/nfs-kernel-server/files
cp -a diy/dnsmasq.conf package/network/services/dnsmasq/files/
./scripts/feeds install -a
cp -a hg255d.config .config
mkdir dl
cp -a diy/download/* dl/
make defconfig
make -j9

