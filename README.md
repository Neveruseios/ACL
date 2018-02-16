自用ACl,注意广告过滤有一部分是copy来的<br></br>
cn.acl=china_ip来自http://www.ipdeny.com/ipblocks/
<br></br>
<br></br>
wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cn.acl<br></br>
cat ad.acl lan.acl cn.acl >my.acl<br></br>
cp my.acl ACL/my.acl<br></br>
cp ad.acl ACL/ad.acl<br></br>
cp lan.acl ACL/lan.acl<br></br>
cp cn.acl ACL/cn.acl<br></br>
cp gitpush.sh ACL/gitpush.sh<br></br>
cp 抓包列表.txt ACL/抓包列表.txt<br></br>
cp README.md ACL/README.md<br></br>
cd ACL<br></br>
git add .<br></br>
git commit -m "update"<br></br>
git push -u origin master<br></br>
cd ..<br></br>
<br></br>
<br></br>
