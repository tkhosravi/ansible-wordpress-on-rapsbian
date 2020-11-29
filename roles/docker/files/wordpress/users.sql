# https://github.com/jedisct1/pure-ftpd/blob/master/pureftpd-mysql.conf
CREATE TABLE users (
  User VARCHAR(255) BINARY NOT NULL,
  Password VARCHAR(255) BINARY NOT NULL,
  Uid INT NOT NULL default '-1',
  Gid INT NOT NULL default '-1',
  Dir VARCHAR(255) BINARY NOT NULL,
  PRIMARY KEY (User)
);

TRUNCATE users;

INSERT INTO users (User,Password,Uid,Gid,Dir)
VALUES ('pureftp',ENCRYPT('ftppassword'),'1003','1005','/var/www/html');
