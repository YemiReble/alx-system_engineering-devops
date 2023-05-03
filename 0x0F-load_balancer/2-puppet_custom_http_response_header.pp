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

# Create An Index File that says Hello
exec { "text":
    command     =>  "echo 'Hello World!' | sudo tee /var/www/html/index.html",
    provider    =>  shell
}

# Add Header and Redirection code to the Exisiting commands in site enabled
exec { "redirection and header":
    command     => "sudo sed -i 's/server_name _;/\n\tadd_header X-Server-By '$hostname';\n\trewrite \/redirect_me https:\/\/www.youtube.com permanent;' /etc/nginx/sites-enabled/default",
    provider    =>  shell
}

# Restart Nginx
exec { "start":
    command     =>  "sudo systemctl restart nginx"
    provider    => shell




