# A Puppet file that fixes Nginx Error

class fix_nginx {

  file { '/etc/nginx/conf.d/fix-nginx.conf':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => 0644,
    source  => 'puppet:///modules/fix_nginx/fix-nginx.conf',
  }

  service { 'nginx':
    ensure  => running,
    enable  => true,
    restart => true,
  }

}
