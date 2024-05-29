docker-compose up -d

# To set up mysql-slave

#docker exec -it mysql-slave mysql -uroot -pslaverootpassword -e "
# STOP SLAVE;
# RESET SLAVE ALL;
# CHANGE MASTER TO MASTER_HOST='mysql-master', MASTER_USER='repl_user', MASTER_PASSWORD='repl_password', MASTER_PORT=3306, MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=1;
# START SLAVE;
# "


# To check mysql-slave
#docker exec -it mysql-slave mysql -uroot -pslaverootpassword -e "SHOW SLAVE STATUS\G;"
