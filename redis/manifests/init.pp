class redis {
  package { "redis-server": 
    ensure => installed,
    require => Apt::Source['redis'],
  }
  apt::source { 'redis':
    location   => 'http://ppa.launchpad.net/rwky/redis/ubuntu',
    repos      => 'main',
    key        => '5862E31D',
    key_server => 'keyserver.ubuntu.com',
  }
}
