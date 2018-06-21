perl geo2nginx.pl < GeoIPCountryWhois.csv > nginx_geoip.txt
cat nginx_geoip.txt | grep CN > geoipCN_temp.txt
python ipsort.py
cat cnic.txt geoipCN.txt > cn.txt
sort cn.txt |uniq > cn.acl
rm geoipCN.txt nginx_geoip.txt geoipCN_temp.txt cn.txt
