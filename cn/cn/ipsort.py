import linecache
import re
a=linecache.getlines('geoipCN_temp.txt')
r=re.compile("\d*\.\d*\.\d*\.\d*\/\d*",re.M)
file=open('geoipCN.txt','w') 
for ip in a:
 for b in r.findall(ip):
  file.write(b)
  file.write('\n')

file.close()

