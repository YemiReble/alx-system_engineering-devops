# This is a script that create a file 'School'
# With some contents in it.

file {'tmp/school':
    ensure  => present,
    mode    => '0744',
    owner   => 'www-data',
    group   => 'www-data',
    content => "I love Puppet\n",
}
