class cups {
  package { 'cups': ensure => installed }
  service { 'cups':
    ensure => running,
    enable => true,
    require => Package['cups'],
  }
}
