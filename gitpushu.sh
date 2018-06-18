cd cn
. ./get_cn.sh
cd ..

cd ad
. ./ad.sh
cd ..

cp cn/cn.acl cn.acl
cp ad/ad.acl ad.acl
cp ad/my_ad.acl my_ad.acl

cat start.acl ad.acl zlstart.acl lan.acl zl.acl cn.acl >my.acl
cat start.acl my_ad.acl zlstart.acl lan.acl zl.acl cn.acl >my-light.acl
cat start.acl zlstart.acl lan.acl zl.acl cn.acl >my-none.acl

sed -i -r '/^#/d'  my.acl
sed -i -r '/^#/d'  my-none.acl
sed -i -r '/^ *$/d' my.acl
sed -i -r '/^$/d' my.acl
sed -i -r '/^ *$/d' my-none.acl
sed -i -r '/^$/d' my-none.acl

cp -frap cn/ ACL/
cp -frap ad/ ACL/
cp start.acl ACL/start.acl
cp my-none.acl ACL/my-none.acl
cp my-light.acl ACL/my-light.acl
cp zlstart.acl ACL/zlstart.acl
cp my.acl ACL/my.acl
cp lan.acl ACL/lan.acl
cp zl.acl ACL/zl.acl
cp gitpush.sh ACL/gitpush.sh
cp gitpushu.sh ACL/gitpushu.sh
cp 抓包列表.txt ACL/抓包列表.txt
cp README.md ACL/README.md

cd ACL
git add .
git commit -m "update"
git push -u origin master 

cd ..
