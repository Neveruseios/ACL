**自用ACl**<br></br>

|                             文件                             | 默认连接方式 |                             直连                             |                           屏蔽广告                           |        地址        |
| :----------------------------------------------------------: | :----------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------: |
| [my.acl](https://raw.githubusercontent.com/Asutorufa/ACL/master/my.acl) |   默认代理   | [ipblocks](http://www.ipdeny.com/ipblocks/),[geoip](http://geolite.maxmind.com/download/geoip/) | [neohosts](https://github.com/neko-dev/neohosts)<br />[StevenBlack/hosts](https://github.com/StevenBlack/hosts)<br />[serverlist](https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext)<br />自己抓包<br />**(广告包含较多可能会误杀正常的网站)** | 右键复制文件名地址 |
| [my-light.acl](https://raw.githubusercontent.com/Asutorufa/ACL/master/my-light.acl) |   默认代理   | [ipblocks](http://www.ipdeny.com/ipblocks/),[geoip](http://geolite.maxmind.com/download/geoip/) | 1.国内广告和侵犯隐私网址(baidu,tencent,ali....)<br />2.自己抓包的<br />3.部分(谷歌,雅虎..)广告 | 右键复制文件名地址 |
| [my-none.acl](https://raw.githubusercontent.com/Asutorufa/ACL/master/my-none.acl) |   默认代理   | [ipblocks](http://www.ipdeny.com/ipblocks/),[geoip](http://geolite.maxmind.com/download/geoip/) |                              无                              | 右键复制文件名地址 |
| [bypass.acl](https://raw.githubusercontent.com/Asutorufa/ACL/master/bypass.acl)(**几乎不更新,不用**) |   默认直连   |                           默认直连                           |                       只包含自己抓包的                       | 右键复制文件名地址 |

**中国ip来自 [ipblock](http://www.ipdeny.com/ipblocks/ )and [geoip](http://geolite.maxmind.com/download/geoip/)**<br />
**其中GeoIPCountryCSV使用了[simplegeo/nginx]( https://github.com/simplegeo/nginx/blob/master/contrib/geo2nginx.pl )的项目用来将ip段转化为CIDR**<br />
**注意:广告过滤使用 [neohosts](https://github.com/neko-dev/neohosts),和[StevenBlack/hosts](https://github.com/StevenBlack/hosts),还有[serverlist](https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext)转化而来,转化方法可在gitpushu.sh中查看,还有部分自己抓包弄得,可以在抓包列表查看**<br />

此产品包含MaxMind公司出品的GeoLite数据库，地址为
  <a href="http://www.maxmind.com">http://www.maxmind.com</a>.