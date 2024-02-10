DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;  

USE employee_db;

CREATE TABLE department (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(60) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT UNSIGNED NOT NULL,
  INDEX dpt_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id),
  manager_id INT UNSIGNED,
  INDEX man_ind (manager_id),
  CONSTRAINT fk_mgr FOREIGN KEY (manager_id) REFERENCES employee(id)
);
