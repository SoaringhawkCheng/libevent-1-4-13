#########################################################################
# File Name: git.sh
# Author: reus
# mail: dmarcoreus@1gmail.com
# Created Time: 2017年04月18日 星期二 20时12分13秒
#########################################################################
#!/bin/bash

read -p "git add 时选择提交的文件：" filename
if [ $filename = "." ]; then
	git add .
else
	git add $filename
fi

read -p "git commit 时写下说明: " discp

git commit -m $discp

read -p "是否要同步到远程仓库(yes/no): " judge
if [ $judge = yes ]; then 
	git push origin master
else
	echo "========>>>>没有提交到远程仓库"
fi

echo -e "\n------------------ git status -----------------------\n"
git status
echo ""
