# This Puppet file Install Flask on servers

# service { pip install Flask:
#    ensure  => installed
#}

package { flask:
    ensure      => installed,
    provider    => pip,
}
