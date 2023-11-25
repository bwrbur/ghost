CREATE USER '<user>'@'localhost' IDENTIFIED WITH mysql_native_password BY '<password>';
GRANT ALL PRIVILEGES ON db_name.* TO '<user>'@'localhost';
