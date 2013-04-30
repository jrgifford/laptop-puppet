class sublimetext2 {
  package { "sublime-text": 
    ensure => installed,
    require => Apt::Source['sublime-text']
   }
  apt::source { 'sublime-text':
    location   => 'http://ppa.launchpad.net/webupd8team/sublime-text-2/ubuntu',
    repos      => 'main',
    key        => 'EEA14886',
    key_server => 'keyserver.ubuntu.com',
  }
}
