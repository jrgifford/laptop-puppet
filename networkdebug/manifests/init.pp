class networkdebug {
  package { "traceroute": ensure => installed }
  package { "zenmap": ensure => installed }
  package { "nmap": ensure => installed }
  package { "siege": ensure => installed }
  package { "wireshark": ensure => installed }
}
