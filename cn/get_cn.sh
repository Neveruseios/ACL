wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country-CSV.zip -O GeoIPCountryCSV.zip
wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cnic.txt
wget http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest -O apnic.txt
unzip GeoIPCountryCSV.zip
cd GeoLite2-Country-CSV*
cat GeoLite2-Country-Blocks-IPv4.csv | grep 1814991 | cut -d ',' '-f1' > ../geoipCN.txt
cd ..
cat apnic.txt  | cut -d '|' -f2,4,5 | grep CN | cut -d '|' -f2,3 | sed "s/|/\//g" | sed "/^[0-9]*\/[0-9]*/d" > apnic_cn.txt
cat cnic.txt geoipCN.txt apnic_cn.txt|uniq > cn.acl
rm geoipCN.txt GeoIPCountryCSV.zip cnic.txt apnic.txt apnic_cn.txt
rm -r GeoLite2-Country-CSV*
