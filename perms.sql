CREATE USER '<user>'@'localhost' IDENTIFIED WITH mysql_native_password BY '<password>';
GRANT ALL PRIVILEGES ON <database name>.* TO '<user>'@'localhost';
