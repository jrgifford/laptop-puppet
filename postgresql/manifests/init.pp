class postgresql {
  package { 'postgresql': ensure => installed }
  service { 'postgresql':
    enable => false,
    require => Package['postgresql'],
  }
}
