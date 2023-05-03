# Puppet That configure a new server with a Header

# Class run all command sequentially!

package { 'nginx':
    ensure => present,
}
exec { 'install':
    command => 'sudo apt-get update ; sudo apt-get install nginx -y',
    require => Package['nginx'],
}
file_line { 'http_header':
    path    => '/etc/nginx/sites-enabled/default',
    match   => 'http {',
    line    => "http {\n\tadd_header X-Server-By \"${hostname}\";",
    require => Exec['install'],
}
exec { 'run':
    command => 'sudo service nginx restart',
    require => File_line['http_header'],
}

