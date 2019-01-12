wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country-CSV.zip -O GeoIPCountryCSV.zip
wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cnic.txt
unzip GeoIPCountryCSV.zip
cd GeoLite2-Country-CSV*
cat GeoLite2-Country-Blocks-IPv4.csv | grep 1814991 | cut -d ',' '-f1' > ../geoipCN.txt
cd ..
#perl geo2nginx.pl < GeoIPCountryWhois.csv | grep CN | sed 's/ CN;//g' > geoipCN.txt
#cat nginx_geoip.txt | grep CN > geoipCN_temp.txt
#python ipsort.py
cat cnic.txt geoipCN.txt |uniq > cn.acl
rm geoipCN.txt GeoIPCountryCSV.zip GeoIPCountryWhois.csv cnic.txt
rm -r GeoLite2-Country-CSV*
