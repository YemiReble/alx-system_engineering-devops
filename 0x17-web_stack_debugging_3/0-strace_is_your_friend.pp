# Fix the Apache2 Server that is returning 500 error

service { 'apache2':
  ensure => running,
  enable => true,
}

package { 'php5':
  ensure => installed,
}

file { '/etc/php5/apache2/php.ini':
  ensure  => file,
  content => template('path/to/php.ini.erb'),
  require => Package['php5'],
  notify  => Service['apache2'],
}
