# 0x06. Regular expression

## Resources
* Regular expressions - basics
* Regular expressions - advanced
* Rubular is your best friend
* Use a regular expression against a problem: now you have 2 problems
* Learn Regular Expressions with simple, interactive exercises

![A Regular Expression Image\n Image not available!](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/ec65557f0da1fbfbff6659413885e4d4822f5b1d.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230301%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230301T145525Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=8ed00760249d38267b14ce2b9ced2c9eff227983426eb8acb277021313c6eb74 "Regular Expression")

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
