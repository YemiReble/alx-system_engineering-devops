# Puppet That configure a new server with a Header

# Making Sure Nginx is available on the server.
package { "nginx":
    ensure  =>  present
}

# Install Nginx
exec { "install":
    command     =>  "sudo apt-get update ; sudo apt-get install nginx -y",
    provider    =>  shell
}

# Add Header and Redirection code to the Exisiting commands in site enabled
file_line { "http_header":
    path    =>  /etc/nginx/sites-enabled/default,
    match   =>  'http{',
    line    =>  "http{\n\tadd_header X-Server-By \"${hostname}\";",
}

# Restart Nginx
exec { "run":
    command     =>  "sudo service nginx restart"
    provider    => shell
