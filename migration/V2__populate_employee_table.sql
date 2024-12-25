-- V2__populate_employee_table.sql

INSERT INTO employee 
    (first_name, last_name, position, salary, date_of_birth, hire_date, email)
VALUES
    ('John',   'Doe',       'Software Engineer',  60000.00, '1985-05-12', '2010-01-15', 'john.doe@company.com'),
    ('Jane',   'Smith',     'Project Manager',    75000.00, '1982-09-20', '2012-03-01', 'jane.smith@company.com'),
    ('Michael','Brown',     'Data Analyst',       55000.00, '1990-07-11', '2015-04-12', 'michael.brown@company.com'),
    ('Emily',  'Davis',     'HR Specialist',      50000.00, '1988-01-03', '2018-08-06', 'emily.davis@company.com'),
    ('David',  'Wilson',    'Sales Executive',    58000.00, '1979-10-31', '2011-02-10', 'david.wilson@company.com'),
    ('Sarah',  'Johnson',   'QA Tester',          52000.00, '1992-12-17', '2019-11-01', 'sarah.johnson@company.com'),
    ('James',  'Garcia',    'Software Engineer',  65000.00, '1991-03-24', '2014-06-20', 'james.garcia@company.com'),
    ('Linda',  'Martinez',  'Marketing Manager',  70000.00, '1977-08-14', '2016-05-17', 'linda.martinez@company.com'),
    ('Daniel', 'Miller',    'Software Architect', 90000.00, '1984-02-09', '2009-07-21', 'daniel.miller@company.com'),
    ('Lisa',   'Wilson',    'UI/UX Designer',     62000.00, '1987-11-22', '2017-10-30', 'lisa.wilson@company.com');