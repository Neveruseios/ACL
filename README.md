**自用ACl**<br></br>
**中国ip来自 http://www.ipdeny.com/ipblocks/  and http://geolite.maxmind.com/download/geoip/**<br></br>
**其中GeoIPCountryCSV使用了simplegeo/nginx( https://github.com/simplegeo/nginx/blob/master/contrib/geo2nginx.pl )的项目用来将ip段转化为CIDR**<br></br>
**注意:广告过滤使用< neohosts,项目地址:https://github.com/neko-dev/neohosts >,和< StevenBlack/hosts,项目地址:https://github.com/StevenBlack/hosts >,还有< https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext >转化而来,方法可在gitpushu.sh中查看,还有部分自己抓包弄得,可以在抓包列表查看**<br></br>
**[proxy_all]去广告** https://raw.githubusercontent.com/Asutorufa/ACL/master/my.acl<br></br>
**[proxy_all]无去广告** https://raw.githubusercontent.com/Asutorufa/ACL/master/my-none.acl<br></br>
**[bypass_all]** https://raw.githubusercontent.com/Asutorufa/ACL/master/bypass.acl<br></br>

此产品包含MaxMind公司出品的GeoLite数据库，地址为
  <a href="http://www.maxmind.com">http://www.maxmind.com</a>.
