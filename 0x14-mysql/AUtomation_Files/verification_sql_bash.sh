#!/usr/bin/env bash
# This Bash Script verifies some checks

# Show GRANTS For User: holberton_user
#mysql -uholberton_user -p -e "SHOW GRANTS FOR 'holberton_user'@'localhost'"

# Show That A user has SELECT Privilege to a table
#mysql -uholberton_user -p -e "use tyrell_corp; select * from nexus6"

# Show Replica Permission on a user using another user other than root
mysql -uholberton_user -p -e 'SELECT user, Repl_slave_priv FROM mysql.user'


# OLD STYLE
# Display All Database
#echo "SHOW databases;" | mysql -hlocalhost -uroot -p

# Display All User
#echo "SELECT user,host FROM mysql.user;" | mysql -hlocalhost -uroot -p

# Show The List Of Tables in a Database
#echo "SHOW TABLES;" | mysql -hlocalhost -uroot -p tyrell_corp

# Show User Grants
#echo "SHOW GRANTS FOR 'holberton_user'@'localhost';" | mysql -hlocalhost -uroot -p

# More Here
