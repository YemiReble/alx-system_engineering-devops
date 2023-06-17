# A Puppet file that fixes Nginx to accept requests

# Class web_stack connections
class web_stack {
  # Increase the maximum number of concurrent connections
  sysctl { 'net.core.somaxconn':
    value => '1024',
  }

  # Adjust the maximum number of file descriptors
  limits::fragment { 'web_stack':
    content => "www-data soft nofile 65536\nwww-data hard nofile 65536",
    order   => '10',
  }

  # Configure Apache or Nginx to handle more concurrent connections
  # Example for Apache:
  class { 'apache':
    mpm_module  =>  'event',
  }
  apache::mod { 'mpm_event':
    ensure  =>  'present',
  }
  apache::mpm { 'event':
    serverlimit            => '100',
    maxrequestworkers      => '1000',
    maxconnectionsperchild => '100',
  }

  # Example for Nginx:
  class { 'nginx':
    worker_processes   => 'auto',
    worker_connections => '1024',
  }
}

