CREATE TABLE files (
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  size INT(11) NOT NULL,
  data LONGBLOB NOT NULL
);