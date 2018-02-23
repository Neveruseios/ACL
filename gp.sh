wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cn.acl
cat ad.acl lan.acl zl.acl cn.acl >my.acl
cp my.acl ACL/my.acl
cp ad.acl ACL/ad.acl
cp lan.acl ACL/lan.acl
cp cn.acl ACL/cn.acl
cp zl.acl ACL/zl.acl
cp gitpush.sh ACL/gitpush.sh
cp gp.sh ACL/gp.sh
cp 抓包列表.txt ACL/抓包列表.txt
cp README.md ACL/README.md
cd ACL
git add .
git commit -m "update"
git push -u origin master
cd ..
