# docker-memcached-test

Port: 11211
Memory Limit: 512mb

# benchmark tool
https://github.com/RedisLabs/memtier_benchmark

memtier_benchmark -s your_ip -p 11211 -P memcache_binary -t 8
