自用ACl,注意有一部是copy来的<br></br>
china_ip来自http://www.ipdeny.com/ipblocks/


wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cn.acl
cat ad.acl lan.acl cn.zone >my.acl
cp my.acl ACL/my.acl
cp ad.acl ACL/ad.acl
cp lan.acl ACL/lan.acl
cp cn.acl ACL/cn.acl
cp 抓包列表.txt ACL/抓包列表.txt
cp README.md ACL/README.md
cd ACL
git add .
git commit -m "update"
git push -u origin master
cd ..


