class mongodb {
  apt::source { 'mongodb':
    location   => 'http://downloads-distro.mongodb.org/repo/ubuntu-upstart',
    repos      => '10gen',
    release    => 'dist',
    key        => '7F0CEB10',
    key_server => 'keyserver.ubuntu.com',
    include_src => false

  }
  package { "mongodb-10gen":
    ensure => installed,
    require => Apt::Source["mongodb"],
  }
  service { 'mongodb':
    enable => false,
    require => Package['mongodb-10gen'],
  }

}
