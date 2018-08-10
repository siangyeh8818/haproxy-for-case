#這裡放了這種haproxy的方案
------
1. haproxy-redis-sentinel : 支援redis哨兵模式的haproxy

啟用 :
------
每個不同case的資料夾皆有自己的'docker-compose'腳本,若你使用'image-Dockerfile'內重新build了docker image, yml內的image名稱請使用你build出來的名稱
1. haproxy-redis-sentinel : 運行前請確認redis-list.env設定符合你的環境
    * REDIS_HOST1 ：第一台redis ip 位址與port ex : 192.168.100.4:6379
    * REDIS_HOST2 : 第二台redis ip 位址與port ex : 192.168.100.5:6379
    * REDIS_HOST3 : 第三台redis ip 位址與port ex : 192.168.100.6:6379
    * REDIS_PASSWORD : redis集群的密碼
