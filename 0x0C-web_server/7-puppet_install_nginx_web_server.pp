# This Puppet file updates, install
# Creates files and configure a web server

class { 'apt::update':
    before  =>  Class['::apt'],
}

package { 'nginx':
    ensure  =>  installed
}

file { '/var/www/html/index.html':
    ensure  =>  present,
    content =>  'Hello World!',
    # require =>  Class['sudo'],
    mode    =>   '0644',
    owner   =>  'root',
    group   =>  'root',
}

file_line { '/etc/nginx/sites-enabled/default':
    ensure  =>  present,
    match   =>  'server_name _;',
    content =>  '/redirect_me /https://www.youtube.com permanent;',
    mode    =>  '0644',
    owner   =>  'root',
    group   =>  'root',
}

#file_line { '/etc/nginx/sites-enabled/default':
#    ensure  =>  present,
#    content =>  "error_page 404 /404.html;\n\tlocation = /404.html {\n\t\troot /var/www/html;\n\t\tinternal;\n\t}",
#    match   =>  'listen 80 default_server;',

exec { 'run':
    command     =>  'sudo service nginx restart',
    provider    =>  shell,
}
