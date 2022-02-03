-- 1/29/2022
-- Skeleton for Car Insurance DATABASE - HW1


CREATE DATABASE Car_Insurance;
USE Car_Insurance;

CREATE TABLE person (
	driver_id NUMERIC(8,0),
	name VARCHAR(25) NOT NULL,
	address VARCHAR(50),
	PRIMARY KEY (driver_id)
	
);

CREATE TABLE car(
	car_license VARCHAR(7),
	model VARCHAR(20),
	year NUMERIC(4,0),
	PRIMARY KEY (car_license)
	
);

CREATE TABLE  accident (
	report_number NUMERIC(8,0),
	date DATE,
	location VARCHAR(50),
	PRIMARY KEY (report_number,date)

);


CREATE TABLE owns (
	driver_id NUMERIC(8,0),
	car_license VARCHAR(7),
	PRIMARY KEY (driver_id),
	FOREIGN KEY (car_license) REFERENCES car(car_license)
);



CREATE TABLE participate(
	driver_id NUMERIC(8,0),
	car_license VARCHAR(7),
	report_number NUMERIC(8,0),
	damage_amount NUMERIC(10,2),
	PRIMARY KEY (driver_id, car_license, report_number),
	FOREIGN KEY (driver_id) REFERENCES person(driver_id),
	FOREIGN KEY (car_license) REFERENCES car(car_license),
	FOREIGN KEY (report_number) REFERENCES 	accident(report_number)	

);

-- Populate data

INSERT INTO person (driver_id,name,address)
	VALUES ('79569418',  'Rodrigo', '3922 Carter Street'  ),
	       ('66234546',   'Roberto' , '157 Patterson Road' ),
			( '24708967', 'John Smith', '2364 Crowfield Road'),
			( '43511471',  'Andre', '4542 Oak Way'),
			( '25171505',  'Ricardo', '4487 Burning Memory Lane'),
			( '66792490', 'Timoteo','1423 Freed Drive' ),
			('12345678', 'Damian', '516 E Slaughter Ln'),
			('51299785', 'Sergio', '4400 Troup HWY');



INSERT INTO car (car_license, model, year)
	VALUES ('DZH1306', 'Audi' ,'1992'),
			('ZGN4639', 'Mazda' ,'1985'),
			('XJT8011', 'Mazda' ,'1989'),
			('BXV1733', 'Jeep' ,'1988'),
			('XBZ4877', 'Ford' ,'1987'),
			('SYS7551', 'Ford' ,'1989'),
			('KGE3381', 'Chevrolet' ,'1989'),
			('DPJ6026','Nissan','1993');
			
		
INSERT INTO accident (report_number,date,location)	
	VALUES ('20075184','1993-04-3','KS'),
			('39708577','1986-05-14','NJ'),
			('66442614','1989-07-27','NY'),
			('28068603','1989-10-28','CA'),
			('30945347','1987-11-16','TX'),
			('46306314','1989-08-15','TX'),
			('42916476','1993-01-11','AZ'),
			('14903184', '1992-09-21','OR');
			
			

INSERT INTO owns (driver_id, car_license)
			VALUES ('79569418', 'DZH1306'),
					('66234546' , 'ZGN4639'), 
					('24708967' , 'XJT8011'), 
					('43511471' , 'BXV1733'), 
					('25171505' , 'XBZ4877'), 
					('66792490' , 'SYS7551'), 
					('12345678' , 'KGE3381'), 
					('51299785' , 'DPJ6026');

INSERT INTO participate (driver_id, car_license, report_number, damage_amount)
		VALUES 		('79569418', 'DZH1306','20075184','2900'),
					('66234546' , 'ZGN4639','39708577','7287'), 
					('24708967' , 'XJT8011','66442614','7686'), 
					('43511471' , 'BXV1733','28068603','4963'), 
					('25171505' , 'XBZ4877','30945347','3240'), 
					('66792490' , 'SYS7551','30945347','2000'), 
					('12345678' , 'KGE3381','46306314','1307'), 
					('51299785' , 'DPJ6026','14903184','5183');
				
	

-- Queries

SELECT *
FROM owns AS o	
INNER JOIN  person AS p
ON o.driver_id = p.driver_id;
			
	
			


