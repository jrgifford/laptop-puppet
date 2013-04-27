class lm-sensors {
  package { 'lm-sensors': ensure => installed }
  service { 'lm-sensors':
    enable => true,
    ensure => running,
    require => Package['lm-sensors'],
  }
}
