class skype {
  package { "pavucontrol": ensure => installed }
  package { "skype": ensure => installed }
}
