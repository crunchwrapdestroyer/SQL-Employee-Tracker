const connection = require('./connection')

class DB {
  constructor(connection) {
    this.connection = connection
  }
  findAllEmployees() {
    return this.connection.promise().query(
      "SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name AS department, role.salary, CONCAT(manager.first_name, ' ', manager.last_name) AS manager FROM employee LEFT JOIN role on employee.role_id = role.id LEFT JOIN department on role.department_id = department.id LEFT JOIN employee manager on manager.id = employee.manager_id;"
    );
  }

  
  findAllDepartments() {
    return this.connection.promise().query(
      "SELECT department.id, department.name FROM department"
    )
  }

  findAllEmployeesByDepartment(departments) {
    return this.connection.promise().query(
      "SELECT employee.id, employee.first_name, employee.last_name, role.title FROM employee LEFT JOIN role on employee.role_id = role.id", departments
    )
  }
}



module.exports = new DB(connection)