# Using Puppet, create a manifest that
# kills a process named killmenow.

exec { 'killmenow':
    command => '/usr/bin/pkill killmenow',
    onlyif  => '/usr/bin/pgrep killmenow',
    path    => '/usr/bin:/usr/sbin:/bin:/sbin',
}
# Ensure that the process is not running
service { 'killmenow':
  ensure => stopped,
}
