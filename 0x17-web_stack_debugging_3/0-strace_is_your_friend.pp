# Fix the Apache2 Server that is returning 500 error

$file2 = '/var/www/html/wp-settings.php'wp-content

# Replace the line containing the error "phpp" with "php"

exec { 'replace_error':
    command => "sed -i 's/phpp/php/g' ${file2}",
    path    => ['/bin','/usr/bin']
}
