cd /mnt/d/code/ACL/ACL
git remote -v
git fetch origin master:temp
git diff temp
git merge temp
git branch -d temp
cd ..
wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cn.acl
wget https://neko-dev.github.io/neohosts/full/hosts -O neohosts.acl
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O stevenhosts.acl
sed -i 's/\./\\\./g' neohosts.acl
sed -i 's/$/\$/g' neohosts.acl
sed -i 's/0\\.0\\.0\\.0 /(^|\\.)/' neohosts.acl
sed -i '1,14d' neohosts.acl
sed -i '/^ *$/d' stevenhosts.acl
sed -i 's/\./\\\./g' stevenhosts.acl
sed -i 's/$/\$/g' stevenhosts.acl
sed -i 's/0\\.0\\.0\\.0 /(^|\\.)/' stevenhosts.acl
sed -i '1,31d' stevenhosts.acl
cat start.acl adstart.acl neohosts.acl stevenhosts.acl myad.acl ad.acl zlstart.acl lan.acl zl.acl cn.acl >my.acl
cat start.acl zlstart.acl lan.acl zl.acl cn.acl >my-none.acl
cp start.acl ACL/start.acl
cp my-none.acl ACL/my-none.acl
cp zlstart.acl ACL/zlstart.acl
cp myad.acl ACL/myad.acl
cp adstart.acl ACL/adstart.acl
cp my.acl ACL/my.acl
cp ad.acl ACL/ad.acl
cp lan.acl ACL/lan.acl
cp cn.acl ACL/cn.acl
cp zl.acl ACL/zl.acl
cp gitpush.sh ACL/gitpush.sh
cp 抓包列表.txt ACL/抓包列表.txt
cp README.md ACL/README.md
cd ACL
git add .
git commit -m "update"
git push -u origin master
cd
~          