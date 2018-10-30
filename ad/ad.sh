proxychains wget https://hosts.nfz.moe/full/hosts -O neohosts.acl
proxychains wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O stevenhosts.acl
proxychains wget "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext" -O pglyoyo.acl

sed -i '/^ *$/d' neohosts.acl
sed -i '/^$/d' neohosts.acl
sed -i 's/\./\\\./g' neohosts.acl
sed -i 's/$/\$/g' neohosts.acl
sed -i 's/0\\.0\\.0\\.0 /(^|\\.)/' neohosts.acl
sed -i 's/\:\: /(^|\\.)/' neohosts.acl
sed -i '1,14d' neohosts.acl

sed -i '/^ *$/d' stevenhosts.acl
sed -i 's/\./\\\./g' stevenhosts.acl
sed -i 's/$/\$/g' stevenhosts.acl
sed -i 's/0\\.0\\.0\\.0 /(^|\\.)/' stevenhosts.acl
sed -i '1,31d' stevenhosts.acl

sed -i '/^ *$/d' pglyoyo.acl
sed -i 's/\./\\\./g' pglyoyo.acl
sed -i 's/$/\$/g' pglyoyo.acl
sed -i 's/127\\.0\\.0\\.1 /(^|\\.)/' pglyoyo.acl
sed -i '1,13d' pglyoyo.acl

cat adstart.acl myad.acl pglyoyo.acl neohosts.acl stevenhosts.acl > ad.acl
cat adstart.acl myad.acl > my_ad.acl


