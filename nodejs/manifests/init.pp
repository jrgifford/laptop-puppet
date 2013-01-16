class nodejs {
  package { "nodejs-dev": ensure => installed }
  package { "nodejs": ensure => installed }
  package { "npm": ensure => installed }
  apt::source { 'nodejs':
    location   => 'http://ppa.launchpad.net/chris-lea/node.js/ubuntu',
    repos      => 'main',
    key        => 'C7917B12',
    key_server => 'keyserver.ubuntu.com',
  }
}
