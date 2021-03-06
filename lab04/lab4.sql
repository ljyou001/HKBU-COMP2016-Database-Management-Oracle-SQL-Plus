PROMPT LAB4;

PROMPT DROP TABLES;

DROP TABLE WORKS_ON CASCADE CONSTRAINT;
DROP TABLE PROJECTS CASCADE CONSTRAINT;
DROP TABLE DEPARTMENTS CASCADE CONSTRAINT;
DROP TABLE EMPLOYEES CASCADE CONSTRAINT;

COMMIT;

PROMPT CREATE TABLES;

CREATE TABLE EMPLOYEES
(SSN	CHAR(9)	NOT NULL,
 NAME 	VARCHAR(15) 	NOT NULL,
 BDATE	DATE,
 SALARY	DECIMAL(10,2),
 SUPER_SSN	CHAR(9),
 DNUMBER	INT	NOT NULL,
 PRIMARY KEY (SSN));

CREATE TABLE DEPARTMENTS
(DNUMBER	INT	NOT NULL,
 DNAME	VARCHAR(15)	NOT NULL,
 HEAD	CHAR(9)	NOT NULL,
 PRIMARY KEY (DNUMBER), UNIQUE (DNAME), UNIQUE (HEAD));

CREATE TABLE PROJECTS
(PNUMBER	INT	NOT NULL,
 PNAME	VARCHAR(15)	NOT NULL,
 LOCATION	VARCHAR(15),
 DNUMBER	INT	NOT NULL,
 PRIMARY KEY (PNUMBER), UNIQUE(PNAME));

CREATE TABLE WORKS_ON
(SSN	CHAR(9)	NOT NULL,
 PNUMBER	INT	NOT NULL,
 HOURS	DECIMAL(3,1)	NOT NULL,
 PRIMARY KEY (SSN, PNUMBER));


COMMIT;


PROMPT INSERT EMPLOYEES TABLE;

INSERT INTO EMPLOYEES VALUES
  ('123456789','John','09-JAN-55', 30000, '333445555',5);
INSERT INTO EMPLOYEES VALUES
  ('333445555','Franklin','08-DEC-45', 40000, '888665555', 5);
INSERT INTO EMPLOYEES VALUES
  ('999887777','Alicia','19-JUL-58', 25000, '987654321', 4);
INSERT INTO EMPLOYEES VALUES
  ('987654321','Jennifer','20-JUN-31', 43000 ,'888665555', 4);
INSERT INTO EMPLOYEES VALUES
  ('666884444','Ramesh','15-SEP-52', 38000, '333445555', 5);
INSERT INTO EMPLOYEES VALUES
  ('453453453', 'Joyce', '31-JUL-62', 25000, '333445555', 5);
INSERT INTO EMPLOYEES VALUES
  ('987987987','Ahmad', '29-MAR-59', 25000, '987654321', 4);
INSERT INTO EMPLOYEES VALUES
  ('888665555','James', '10-NOV-27', 55000, NULL, 1);
 INSERT INTO EMPLOYEES VALUES
 ('888888888','Peter', '10-MAR-55', 42000, '888665555', 2);
INSERT INTO EMPLOYEES VALUES
 ('173173173','Mary', '01-JAN-60', 23000, NULL, 2);
INSERT INTO EMPLOYEES VALUES
 ('142142142','Jack', '25-APR-58', 28000, '888888888', 2);
INSERT INTO EMPLOYEES VALUES
 ('316316316','Kevin', '27-JUN-80', 40000, '987654321', 4);
INSERT INTO EMPLOYEES VALUES
  ('101010101','John','12-JAN-56', 20000, '333445555',5);


PROMPT INSERT DEPARTMENTS TABLE;

INSERT INTO DEPARTMENTS VALUES
  (5,'Research','333445555');
INSERT INTO DEPARTMENTS VALUES
  ( 4,'Administration', '987654321');
INSERT INTO DEPARTMENTS VALUES
  (1,'Headquarters', '888665555');  
INSERT INTO DEPARTMENTS VALUES
 (2,'Marketing', '888888888');

PROMPT INSERT PROJECTS TABLE;

INSERT INTO PROJECTS VALUES 
  (1 ,'ProductX',  'Bellaire', 5 );
INSERT INTO PROJECTS VALUES 
  (2 ,'ProductY', 'Sugarland', 5 );
INSERT INTO PROJECTS VALUES 
  (3 ,'ProductZ', 'Houston', 5 );
INSERT INTO PROJECTS VALUES 
  (10 ,'Computerization',  'Stafford', 4 );
INSERT INTO PROJECTS VALUES 
  (20,'Reorganization',  'Houston', 1 );
INSERT INTO PROJECTS VALUES 
  (30,'Newbenefits',  'Stafford', 4 );

PROMPT INSERT WORKS_ON TABLE;

INSERT INTO WORKS_ON VALUES 
  ('123456789', 1, 32.5);
INSERT INTO WORKS_ON VALUES
  ('123456789', 2, 7.5);
INSERT INTO WORKS_ON VALUES
  ('666884444', 3, 40);
INSERT INTO WORKS_ON VALUES
  ('453453453', 1, 20);
INSERT INTO WORKS_ON VALUES
  ('453453453', 2, 20);
INSERT INTO WORKS_ON VALUES
  ('333445555', 2, 10);
INSERT INTO WORKS_ON VALUES
  ('333445555', 3, 10);
INSERT INTO WORKS_ON VALUES
  ('333445555', 10, 10);
INSERT INTO WORKS_ON VALUES
  ('333445555', 20, 10);
INSERT INTO WORKS_ON VALUES
  ('999887777', 30, 30);
INSERT INTO WORKS_ON VALUES
  ('999887777', 10, 10);
INSERT INTO WORKS_ON VALUES
  ('987987987', 10, 35);
INSERT INTO WORKS_ON VALUES
  ('987987987', 30,  5);
INSERT INTO WORKS_ON VALUES
  ('987654321', 30, 20);
INSERT INTO WORKS_ON VALUES
  ('987654321', 20, 15);
INSERT INTO WORKS_ON VALUES
  ('888665555', 20, 0);
INSERT INTO WORKS_ON VALUES 
  ('101010101', 1, 12.5);
INSERT INTO WORKS_ON VALUES
  ('101010101', 2, 7.5);



COMMIT;
