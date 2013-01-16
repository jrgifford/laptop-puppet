class virtualbox {
  package { "virtualbox-4.2": ensure => installed }
  include dkms
  apt::source { 'virtualbox':
    location   => 'http://download.virtualbox.org/virtualbox/debian/',
    repos      => 'contrib non-free',
    key        => '98AB5139',
    key_server => 'keyserver.ubuntu.com',
    include_src => false, 
  }
}
