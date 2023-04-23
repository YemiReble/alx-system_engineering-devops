# This Puppet file Install Flask on servers

service { 'pip install Flask':
    ensure  => 2.1.0
}
