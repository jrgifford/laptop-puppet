class virtualbox {
  package { "virtualbox-4.2": ensure => installed, require => apt::source ['virtualbox']}
  include dkms
  apt::source { 'virtualbox':
    location   => 'http://download.virtualbox.org/virtualbox/debian/',
    repos      => 'contrib non-free',
    release    => 'quantal',
    key        => '98AB5139',
    key_server => 'keyserver.ubuntu.com',
    include_src => false, 
  }
}
