# setup

setup base environment

* tmux
* redis
* cpanm
* mysql(MariaDB)
* nginx

# Usage

```
mkdir /var/www && cd /var/www
git clone git@github.com:Andryu/setup.git
cd setup
./installer.sh
```

# History

* v1.0.0
  maintenance my.cnf, add innodb_buffer_pool_size, slow_query,bin_log etc
