cp cn/cn.acl cn.acl

cat start.acl adstart.acl myad.acl zlstart.acl lan.acl zl.acl cn.acl >my-light.acl
cat start.acl zlstart.acl lan.acl zl.acl cn.acl >my-none.acl

sed -i -r '/^#/d'  my-light.acl
sed -i -r '/^#/d'  my-none.acl
sed -i -r '/^ *$/d' my-light.acl
sed -i -r '/^$/d' my-light.acl
sed -i -r '/^ *$/d' my-none.acl
sed -i -r '/^$/d' my-none.acl

cp start.acl ACL/start.acl
cp my-none.acl ACL/my-none.acl
cp my-light.acl ACL/my-light.acl
cp zlstart.acl ACL/zlstart.acl
cp lan.acl ACL/lan.acl
cp cn.acl ACL/cn.acl
cp zl.acl ACL/zl.acl
cp gitpush.sh ACL/gitpush.sh
cp gitpushu.sh ACL/gitpushu.sh
cp gitpushun.sh ACL/gitpushun.sh
cp 抓包列表.txt ACL/抓包列表.txt
cp README.md ACL/README.md
cd ACL
git add .
git commit -m "update"
git push -u origin master 

cd ..
