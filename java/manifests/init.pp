class java {
  package { "icedtea6-plugin": ensure => installed }
  package { "openjdk-7-jre": ensure => installed }
  package { "g++": ensure => installed }
  package { "openjdk-6-jre-headless": ensure => installed }
  package { "ant": ensure => installed }
}
