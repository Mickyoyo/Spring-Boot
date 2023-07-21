CREATE TABLE submission (
id integer,
consultant_id integer,
submission_date DATE,	
vendor_company VARCHAR(60),
vendor_name VARCHAR(50),
vendor_email_address VARCHAR(50),
vendor_phone_number VARCHAR(15),
implementation_partner VARCHAR(60),
client_name VARCHAR(50),
pay_rate INTEGER,
submission_status VARCHAR(50),
submission_type VARCHAR(40),
city VARCHAR(60),
state VARCHAR(30),
zip INTEGER
);
select * from submission;
desc submission;
INSERT INTO submission(id, consultant_id, submission_date, vendor_company, vendor_name, 
vendor_email_address, vendor_phone_number, implementation_partner, client_name, pay_rate,
 submission_status, submission_type, city, state, zip)
 VALUES (1, 101, '2023-07-10', 'Apex System', 'john', 'john@apex.com',
 '234554323', 'cognizant', 'CVS', 75,  'SUBMITTED', 'self', 'dallas', 'TX', 75012);
 INSERT INTO submission (id, consultant_id, submission_date, vendor_company, vendor_name, 
vendor_email_address, vendor_phone_number, implementation_partner, client_name, pay_rate,
 submission_status, submission_type, city, state, zip)
 VALUES( 2, 102, '2023-07-18', 'Tek System', 'harry', 'harry@tek.com',
 '54386793', 'CapGemini','Kroger', 67, 'NOT SUBMITTED', 'recruiter','chicago','IL', 60054);
 INSERT INTO submission (id, consultant_id, submission_date, vendor_company, vendor_name, 
vendor_email_address, vendor_phone_number, implementation_partner, client_name, pay_rate,
 submission_status, submission_type, city, state, zip)
 VALUES( 3, 103, '2023-07-7', 'Insight Global', ' kenny', 'kenny@global.com',
 '87623498', 'Accenture', 'Walmart', 70, 'SUBMITTED', 'self', 'seattle', 'WA', 98109);

SELECT * from submission;


CREATE TABLE lead_detail(
id INTEGER,
first_name VARCHAR(50),
last_name VARCHAR(40),
email_address VARCHAR(60),
phone_number INTEGER
);
SELECT * from lead_detail;
desc lead_detail;
INSERT into lead_detail(id, first_name, last_name, email_address, phone_number)
VALUES (301, 'Tejan', 'Reddy', 'tejan01@gmail.com', 23432456);
INSERT into lead_detail(id, first_name, last_name, email_address, phone_number)
VALUES (302, 'pream', 'kumar', 'pream02@yahoo.com', 42443843 );
INSERT into lead_detail(id, first_name, last_name, email_address, phone_number)
VALUES (303, 'manohar', 'reddy', 'manohar13@gmail.com', 53549232);
SELECT * from submissionsheet.lead_detail;

CREATE TABLE consultant_detail(
id INTEGER,
lead_id INTEGER,
first_name VARCHAR(50),
last_name VARCHAR(50),
email_address VARCHAR(50),
phone_number INTEGER
);
select * from consultant_detail;
desc consultant_detail;
insert into consultant_detail (id, lead_id, first_name, last_name, email_address, phone_number)
 values(101, 301, 'Hamilton', 'lewis', 'lewis44@gmail.com', 44698793 );
insert into consultant_detail (id, lead_id, first_name, last_name, email_address, phone_number)
 values(102, 302, 'tsunoda', 'yuki', 'yuki22@yahoo.com', 34567645);
insert into consultant_detail (id, lead_id, first_name, last_name, email_address, phone_number)
 values(103, 303, 'tommy', 'picker', 'picker12@gmail.com', 6778899);

SELECT * from submissionsheet.consultant_detail;

CREATE TABLE submission_update(
id INTEGER,
submission_id INTEGER,
update_text VARCHAR(50),
created_date datetime
);

SELECT * from submissionsheet.submission_update;

CREATE TABLE employee(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_start_date DATE,
    salary DECIMAL,
    department VARCHAR(50)
);
SELECT * FROM employee;
desc employee;
INSERT INTO employee(first_name, last_name, job_start_date, salary, department)
VALUES( 'kohil', 'Virat', '2020-05-12', 3000, 'Java');
INSERT INTO employee(first_name, last_name, job_start_date, salary, department)
 VALUES('Rohith', 'Sharma', '2019-06-05', 2800,'Sales force');
 INSERT INTO employee(first_name, last_name, job_start_date, salary, department)
 VALUES('hardik', 'pandya', '2022-11-23', 3300,'Java');
 
SELECT MAX(salary) AS highest_salary
FROM Employee;

SELECT *
FROM Employee
WHERE job_start_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
SELECT * from submissionsheet.employee;

