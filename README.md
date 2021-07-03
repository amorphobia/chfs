# chfs
[CuteHttpFileServer/chfs](http://iscute.cn/chfs) 是一个免费的、HTTP协议的文件共享服务器，使用浏览器可以快速访问。

## 用法 / Usage
```
docker pull amorphobia/chfs
docker run -d -p 80:80 -v <host_path>:/home -e RULE=<rules> amorphobia/chfs
```
规则详见 [chfs 网页](http://iscute.cn/chfs)
