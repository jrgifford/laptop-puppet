class rubycompilerequirements {
  package { "wget": ensure => installed }
  package { "curl": ensure => installed }
  package { "libxslt1-dev": ensure => installed }
  package { "libmagickwand-dev": ensure => installed }
  package { "build-essential": ensure => installed }
  package { "clang": ensure => installed }
  package { "bison": ensure => installed }
  package { "openssl": ensure => installed }
  package { "zlib1g": ensure => installed }
  package { "libxslt1.1": ensure => installed }
  package { "libssl-dev": ensure => installed }
  package { "libxml2": ensure => installed }
  package { "libffi-dev": ensure => installed }
  package { "libyaml-dev": ensure => installed }
  package { "autoconf": ensure => installed }
  package { "libc6-dev": ensure => installed }
  package { "libreadline6-dev": ensure => installed }
  package { "zlib1g-dev": ensure => installed }
  package { "libcurl4-openssl-dev": ensure => installed }
  package { "libtool": ensure => installed }
  package { "libmysqlclient-dev": ensure => installed }
  package { "libpq-dev": ensure => installed }
  package { "libsqlite3-dev": ensure => installed }
}
