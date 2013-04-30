class jrgifford {
  package { "vim": ensure => installed }
  package { "glabels": ensure => installed }
  package { "vnstat": ensure => installed }
  package { "byobu": ensure => installed }
  package { "keepass2": ensure => installed }
  package { "keepassx": ensure => installed }
  apt::source { 'everpad':
    location   => 'http://ppa.launchpad.net/nvbn-rm/ppa/ubuntu',
    repos      => 'main',
    key        => '9C8631BA',
    key_server => 'keyserver.ubuntu.com',
  }
  package { "git": ensure => installed }
  package { "pandoc": ensure => installed }
  package { "shutter": ensure => installed }
  package { "everpad": ensure => installed, require => apt::source['everpad'] }
  package { "python-gpgme": ensure => installed }
#  package { "dostuff": ensure => installed, require => apt::source['dostuff'] } 
#  apt::source { "dostuff":
#    location   => 'http://ppa.launchpad.net/ximilian/ppa/ubuntu',
#    repos      => 'main',
#    key        => 'D2FFD835',
#    key_server => 'keyserver.ubuntu.com', 
#    release    => 'precise',
#  }
  apt::source { 'dropbox':
    location   => 'http://linux.dropbox.com/ubuntu',
    repos      => 'main',
    key        => '5044912E',
    key_server => 'pgp.mit.edu',
    release    => 'precise',
   }
  package { "dropbox": ensure => installed, require => apt::source['dropbox']}
  package { "unity-lens-shopping": ensure => absent }
  package { "htop": ensure => installed }
  package { "zsync": ensure => installed }
  package { "retext": ensure => installed }
  package { "chromium-browser": ensure => installed }
  package { "compizconfig-settings-manager": ensure => installed }
  package { "bzr": ensure => installed }
  package { "inkscape": ensure => installed }
  package { "enigmail": ensure => installed }
  package { "ekiga": ensure => installed }
  package { "git-core": ensure => installed }
  package { "sqlite3": ensure => installed }
  package { "libapr1": ensure => installed }
  package { "libaprutil1": ensure => installed }
  package { "subversion": ensure => installed }  
}
