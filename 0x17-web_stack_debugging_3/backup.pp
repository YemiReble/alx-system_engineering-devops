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

$file2 = '/var/www/html/wp-settings.php'wp-content

# Replace the line containing the error "phpp" with "php"

exec { 'replace_error':
    command => "sed -i 's/phpp/php/g' ${file2}",
    path    => ['/bin','/usr/bin']
}
