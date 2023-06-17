# Create the "holberton" user
user { 'holberton':
  ensure     => 'present',
  managehome => true,
}

# Allow the "holberton" user to open files without error messages
file { '/etc/security/limits.conf':
  ensure  => 'file',
  content => "holberton soft nofile 65536\nholberton hard nofile 65536",
  mode    => '0644',
  require => User['holberton'],
}

# Allow the "holberton" user to login
file { '/etc/ssh/sshd_config':
  ensure  => 'file',
  content => 'AllowUsers holberton',
  mode    => '0644',
  require => User['holberton'],
  notify  => Service['sshd'],
}

# Restart the SSH service
service { 'sshd':
  ensure  => 'running',
  enable  => true,
  require => File['/etc/ssh/sshd_config'],
}
