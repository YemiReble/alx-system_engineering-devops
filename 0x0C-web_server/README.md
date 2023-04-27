# 0x0C. Web server

- [x] DevOps
- [x] SysAdmin

![Web Server](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/266/8Gu52Qv.png)

## Bash Script That Modify Server File
```
vagrant@ubuntu$ cat 88-script_example
#!/usr/bin/env bash
# Configuring a server with specification XYZ
echo hello world > /tmp/test
sed -i 's/80/8080/g' /etc/nginx/sites-enabled/default
vagrant@ubuntu$
```

![Just An Image](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/266/82VsYEC.jpg)

## Resources
* How the web works
* Nginx
* How to Configure Nginx
* Child process concept page
* Root and sub domain
* HTTP requests
* HTTP redirection
* Not found HTTP response code
* Logs files on Linux

### For reference:
* RFC 7231 (HTTP/1.1)
* RFC 7540 (HTTP/2)

### man or help:
* scp
* curl

## Learning Objectives
* What is the main role of a web server
* What is a child process
* Why web servers usually have a parent process and child processes
* What are the main HTTP requests

## DNS
* What DNS stands for
* What is DNS main role

## DNS Record Types
* A
* CNAME
* TXT
* MX

Have fun looking around
