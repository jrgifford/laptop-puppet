class jrgifford {
  package { "vim": ensure => installed }
  package { "byobu": ensure => installed }
  package { "keepass2": ensure => installed }
  package { "keepassx": ensure => installed }
  apt::source { 'everpad':
    location   => 'http://ppa.launchpad.net/nvbn-rm/ppa/ubuntu',
    repos      => 'main',
    key        => '9C8631BA',
    key_server => 'keyserver.ubuntu.com',
  }
  package { "everpad": ensure => installed }
  package { "python-gpgme": ensure => installed }
  package { "dostuff": ensure => installed } 
  apt::source { "dostuff":
    location   => 'http://ppa.launchpad.net/ximilian/ppa/ubuntu',
    repos      => 'main',
    key        => 'D2FFD835',
    key_server => 'keyserver.ubuntu.com', 
    release    => 'precise',
  }
  apt::source { 'dropbox':
    location   => 'http://linux.dropbox.com/ubuntu',
    repos      => 'main',
    key        => '5044912E',
    key_server => 'pgp.mit.edu',
    release    => 'precise',
   }
  package { "dropbox": ensure => installed }
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
  
  rbenv::install { "jrg":
    home  => '/home/jrg'
  }
  rbenv::compile { "jrg/1.9.3":
    user => "jrg",
    ruby => "1.9.3-p327",
  }
}
