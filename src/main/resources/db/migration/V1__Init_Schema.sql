--
-- Table structure for table role
--

DROP TABLE IF EXISTS role;
CREATE TABLE role (
  role_id int(11) NOT NULL AUTO_INCREMENT,
  role varchar(255) DEFAULT NULL,
  PRIMARY KEY (role_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


--
-- Table structure for table user
--

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  active bit(1) DEFAULT NULL,
  email varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Table structure for table user_role
--

DROP TABLE IF EXISTS user_role;
CREATE TABLE user_role (
  user_id int(11) NOT NULL,
  role_id int(11) NOT NULL,
  PRIMARY KEY (user_id,role_id),
  KEY FKa68196081fvovjhkek5m97n3y (role_id),
  CONSTRAINT FK859n2jvi8ivhui0rl0esws6o FOREIGN KEY (user_id) REFERENCES user (user_id),
  CONSTRAINT FKa68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES role (role_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO role VALUES (1,'ADMIN');
INSERT INTO role VALUES (2,'SUPER_ADMIN');
INSERT INTO role VALUES (3,'USER');