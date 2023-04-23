# 0x0A. Configuration management

- [x] DevOps
- [x] SysAdmin
- [x] Scripting
- [x] CI/CD

Resources
Read or watch:

Intro to Configuration Management
Puppet resource type: file (check “Resource types” for all manifest types in the left menu)
Puppet’s Declarative Language: Modeling Instead of Scripting
Puppet lint
Puppet emacs mode

## Install puppet
```
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```
You do not need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic
level syntax which is virtually identical in newer versions of Puppet.


## Install puppet-lint
```
$ gem install puppet-lint
```
