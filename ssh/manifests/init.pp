class ssh {
  package { 'openssh-server': ensure => installed }
  service { 'ssh':
    ensure => running,
    enable => true,
    require => Package['openssh-server'],
  }
}
