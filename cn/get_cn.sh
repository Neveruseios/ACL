wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country-CSV.zip -O GeoIPCountryCSV.zip
wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cnic.txt
unzip GeoIPCountryCSV.zip
cd GeoLite2-Country-CSV*
cat GeoLite2-Country-Blocks-IPv4.csv | grep 1814991 | cut -d ',' '-f1' > ../geoipCN.txt
cd ..
cat cnic.txt geoipCN.txt |uniq > cn_tmp.acl
cat cn_site.acl cn_tmp.acl > cn.acl
rm geoipCN.txt GeoIPCountryCSV.zip cnic.txt cn_tmp.acl
rm -r GeoLite2-Country-CSV*
