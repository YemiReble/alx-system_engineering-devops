# 0x06. Regular expression

## Resources
* Regular expressions - basics
* Regular expressions - advanced
* Rubular is your best friend
* Use a regular expression against a problem: now you have 2 problems
* Learn Regular Expressions with simple, interactive exercises

![A Regular Expression Image\n Image not available!](https://github.com/YemiReble/alx-system_engineering-devops/tree/main/0x06-regular_expressions/Test-Files/Regular-Expression-Example-img.png "Regular Expression")

The focus of this exercise is to play with regular expressions (regex), here is an example of a Ruby code that was used.

```
yemidev@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
yemidev@ubuntu$
yemidev@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
yemidev@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
yemidev@ubuntu$ ./example.rb 127.0.0.a/

```

Have fun looking around :)
