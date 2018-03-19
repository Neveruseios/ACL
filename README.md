自用ACl,随缘更新<br></br>
**注意:广告过滤有一部分是copy来的**<br></br>
cn.acl=china_ip来自http://www.ipdeny.com/ipblocks/<br></br>
**[proxy_all]去广告** https://raw.githubusercontent.com/Asutorufa/ACL/master/my.acl<br></br>
**[proxy_all]无去广告** https://raw.githubusercontent.com/Asutorufa/ACL/master/my-none.acl<br></br>
**[bypass_all]** https://raw.githubusercontent.com/Asutorufa/ACL/master/bypass.acl<br></br>
```
wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cn.acl
cat ad.acl lan.acl cn.acl >my.acl
cp my.acl ACL/my.acl
cp ad.acl ACL/ad.acl
cp lan.acl ACL/lan.acl
cp cn.acl ACL/cn.acl
cp gitpush.sh ACL/gitpush.sh
cp 抓包列表.txt ACL/抓包列表.txt
cp README.md ACL/README.md
cd ACL
git add .
git commit -m "update"
git push -u origin master
cd ..
```