-- 1/31/2022
-- EMPLOYEE DATABASE  - HW1

CREATE DATABASE employee;
USE employee;

CREATE TABLE employee (
	employee_id NUMERIC(5,0),
	employee_name VARCHAR(25) NOT NULL,
	street VARCHAR(50),
	city VARCHAR (25),
	PRIMARY KEY (employee_id)
	
);

CREATE TABLE company(
	company_id NUMERIC(4,0),
	company_name VARCHAR(25),
	city VARCHAR(25),
	PRIMARY KEY (company_id)
);

CREATE TABLE works(
	employee_id NUMERIC(5,0),
	company_id NUMERIC(4,0),
	salary NUMERIC(8,0),
	PRIMARY KEY (employee_id),
	FOREIGN KEY (company_id) REFERENCES company(company_id)
	
);

CREATE TABLE manages(
	employee_id NUMERIC(5,0),
	manager_id NUMERIC (5,0),
	PRIMARY KEY (employee_id),
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- Populate data
USE employee;

INSERT INTO employee(employee_id,employee_name,street,city)
VALUES 
		('001','Alberto','Carter Street','Harlingen'),
		('002','Alfredo','E 14th Street','Harlingen'),
		('003','Vini','Oak Way','Brownsville'),
		('004','Sergio','E 14th Street','Brownsville'),
		('005','Xuan','Freed Drive','Brownsville'),
		('133','Jason','Boca Chica Blvd','Brownsville'),
		('134','Derian','Laura Ln','Brownsville'),
		('200','Julian','Riverside Dr','Austin') ,  
		('201','Rudy','Riverside Dr','Austin'),  
		('300','Carlos','1st Street','Austin');
		

INSERT INTO company(company_id,company_name,city)
VALUES 
		('8373','FBC','Brownsville'),
		('7444','SBC','Brownsville'),
		('9999','FBC','Austin'),
		('1000','SBC','Austin'),
		('5555', 'IBC', 'Dallas'),
		('3333','FBC', 'Dallas') ;


INSERT INTO works(employee_id,company_id,salary)
VALUES 
		('001','8373','6000'),
		('002','8373','7000'),
		('003','8373','8000'),
		('004','8373','11000'),
		('005','8373','15000'),
		('133','7444','8000'),
		('134','7444','13500'),
		('200','9999','15000'),
		('201','9999','19000'),
		('300','1000','18000');	
	

INSERT INTO manages(employee_id,manager_id)
VALUES 
		('001','004'),
		('002','004'),
		('003','004'),
		('004','005'),
		('005','005'),
		('133', '134'),
		('134', '134'),
		('200', '201'),
		('201', '201'),
		('300', '300');














		