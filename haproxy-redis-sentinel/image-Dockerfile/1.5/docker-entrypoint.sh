#!/bin/bash
sed -i s"#server redis1 .*#server redis1 $REDIS_HOST1 check inter 1s#g" /etc/haproxy/haproxy.cfg
sed -i s"#server redis2 .*#server redis2 $REDIS_HOST2 check inter 1s#g" /etc/haproxy/haproxy.cfg
sed -i s"#server redis3 .*#server redis3 $REDIS_HOST3 check inter 1s#g" /etc/haproxy/haproxy.cfg

sed -i s"/<REDIS_PASSWORD>/$REDIS_PASSWORD/g" /etc/haproxy/haproxy.cfg
haproxy -f /etc/haproxy/haproxy.cfg  && tail -f /var/log/lastlog
