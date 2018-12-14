wget http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip -O GeoIPCountryCSV.zip
wget http://www.ipdeny.com/ipblocks/data/countries/cn.zone -O cnic.txt
unzip -o GeoIPCountryCSV.zip
perl geo2nginx.pl < GeoIPCountryWhois.csv | grep CN | sed 's/ CN;//g' > geoipCN.txt
#cat nginx_geoip.txt | grep CN > geoipCN_temp.txt
#python ipsort.py
cat cnic.txt geoipCN.txt |uniq > cn.acl
rm geoipCN.txt GeoIPCountryCSV.zip GeoIPCountryWhois.csv cnic.txt
