class multimedia {
  package { "vlc": ensure => installed }
  package { "libmp3lame-dev": ensure => installed }
  package { "lame": ensure => installed }
  package { "libavcodec-extra-53": ensure => installed }
  package { "libav-tools": ensure => installed }
}
