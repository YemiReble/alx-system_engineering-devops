# This Puppet file Install Flask on servers

service { pip install flask:
    ensure  => installed
}
