# Puppet file that set ssh config
# Password Authentication to None
# Connects with ~/.ssh/school private key

file { '/home/user/.ssh/config':
    ensure  => present,
    content => "Host server\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
}
