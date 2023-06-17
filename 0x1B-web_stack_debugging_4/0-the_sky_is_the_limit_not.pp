# A Puppet file that fixes Nginx to accept requests

# Reconfigure ULIMIT='-n 4096'
exec { 'config_nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

# Restart Nginx
-> exec { 'restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
