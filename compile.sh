#!/bin/bash
./scripts/feeds update -a
./scripts/feeds install -a
./scripts/feeds install -a
cp -Rf diy/app package/
cp -a diy/index.html feeds/luci/modules/base/root/www
cp -a diy/luci feeds/luci/modules/base/root/etc/config
cp -a diy/autossh.config feeds/oldpackages/net/autossh/files
cp -rf diy/resources/* feeds/luci/modules/base/htdocs/luci-static/resources/
cp -rf diy/bootstrap/* feeds/luci/themes/bootstrap/htdocs/luci-static/bootstrap/
cp -a diy/footer.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/header.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/indexer.htm feeds/luci/themes/bootstrap/luasrc/view/themes/bootstrap
cp -a diy/sysauth.htm feeds/luci/modules/base/luasrc/view
cp -a diy/nfsd.exports feeds/packages/net/nfs-kernel-server/files
cp -a hg255d.config .config
mkdir dl
cp -a diy/download/* dl/
wget -O dl/linux-firmware-2014-06-04-7f388b4885cf64d6b7833612052d20d4197af96f.tar.bz2 http://192.168.111.4:8082/openwrtdl/linux-firmware-2014-06-04-7f388b4885cf64d6b7833612052d20d4197af96f.tar.bz2
make defconfig
make -j5

