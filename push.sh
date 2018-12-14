#git remote -v
#git fetch origin master:temp
#git diff temp
#git merge temp
#git branch -d temp

cd cn
. ./get_cn.sh
cd ..

cd ad
. ./ad.sh
cd ..

#cp cn/cn.acl cn.acl
#cp ad/ad.acl ad.acl
#cp ad/my_ad.acl my_ad.acl
#cp proxy/gfwlist.acl gfwlist.acl

cat common/start.acl ad/ad.acl common/zlstart.acl common/lan.acl cn/cn.acl proxy/gfwlist.acl > aacl.acl
cat common/start.acl ad/light_ad.acl common/zlstart.acl common/lan.acl cn/cn.acl proxy/gfwlist.acl > aacl-light.acl
cat common/start.acl common/zlstart.acl common/lan.acl cn/cn.acl proxy/gfwlist.acl > aacl-none.acl

#rm cn.acl ad.acl my_ad.acl gfwlist.acl

#sed -i -r '/^#/d'  my.acl
#sed -i -r '/^#/d'  my-none.acl
#sed -i -r '/^ *$/d' my.acl
#sed -i -r '/^$/d' my.acl
#sed -i -r '/^ *$/d' my-none.acl
#sed -i -r '/^$/d' my-none.acl

#cp -frap cn/ ACL/
#cp -frap ad/ ACL/
#cp -frap proxy/ ACL/
#cp start.acl ACL/start.acl
#cp my-none.acl ACL/my-none.acl
#cp my-light.acl ACL/my-light.acl
#cp zlstart.acl ACL/zlstart.acl
#cp my.acl ACL/my.acl
#cp lan.acl ACL/lan.acl
#cp gitpushun.sh ACL/gitpushun.sh
#cp gitpushu.sh ACL/gitpushu.sh
#cp 抓包列表.txt ACL/抓包列表.txt
#cp README.md ACL/README.md

#cd ACL
git add .
git commit -m "update"
git push -u origin master
#cd ..
