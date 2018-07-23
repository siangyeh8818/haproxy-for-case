#這裡放了這種haproxy的方案
1. haproxy-redis-sentinel : 支援redis哨兵模式的haproxy

啟用 :
每個不同case的資料夾皆有自己的'docker-compose'腳本,若你使用'image-Dockerfile'內重新build了docker image, yml內的image名稱請使用你build出來的名稱
