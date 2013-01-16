class mysql {
  package { "mysql-server": ensure => installed }
  package { "mysql-workbench": ensure => installed }
  service { "mysql":
    enable => false,
    require => Package["mysql-server"]
  } 
}
