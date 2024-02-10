USE employee_db;

INSERT INTO department
    (name)
VALUES
    ('Sales'),
    ('Security'),
    ('Manufacturing'),
    ('Supply Chain');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Manufacturing Manager', 100000, 3),
    ('Manufacturing Assistant Manager', 70000, 3),
    ('Sales Lead', 60000, 1),
    ('Sales Associate', 60000, 1),
    ('Supply Chain Manager', 80000, 4),
    ('Supply Chain Associate', 40000, 4),
    ('Manufacturing Operator', 50000, 3),
    ('Security Officer', 50000, 2);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Marcus', 'Parks', 1, NULL),
    ('Shelly', 'Bristol', 2, NULL),
    ('Elena', 'Harper', 3, 1),
    ('Nolan', 'Wright', 4, 2),
    ('Sierra', 'Tate', 5, NULL),
    ('Dominic', 'Reed', 6, 3),
    ('Aria', 'Monroe', 7, 4),
    ('Caleb', 'Foster', 8, 6);
    