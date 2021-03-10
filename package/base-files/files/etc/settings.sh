#!/bin/sh
if [ ! -f "/etc/crontabs/root" ]; then
	echo "未找到计划任务，文档建立中"
	touch /etc/crontabs/root
else
	echo "计划任务文档已存在"
fi
#sed -i 's/root:.*/root:$1$wEehtjxj$YBu4quNfVUjzfv8p\/\PBo5.:0:0:99999:7:::/g' /etc/shadow
exit 0
