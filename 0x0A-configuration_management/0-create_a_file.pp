# This is a script that create a file 'School'
# With some contents in it.

file { '/tmp/school':
    ensure  => present,
    content => 'I love Puppet\n',
    owner   => 'www-data',
    group   => 'www-data',
    mode    => '0744',
}
