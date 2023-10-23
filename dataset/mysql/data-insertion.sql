
insert into departament 
    values  (5,'Research', 333445555, '1988-05-22','1986-05-22'),
            (4,'Administration',  987654321, '1995-01-01','1994-01-01'),
            (1,'Headquarters', 888665555,'1981-06-19','1980-06-19');

insert into employee (Ssn,Fname,Minit,Lname,Bdate,Address,Sex,Salary,Dnumber,Mssn)
    values  ('333445555','Franklin', 'T', 'Wong',  '1955-12-08', '638-Voss-Houston-TX', 'M', 40000,5,NULL ),
			      ('888665555','James', 'E', 'Borg', '1937-11-10', '450-Stone-Houston-TX', 'M', 55000,1,null),
            ('999887777','Alicia', 'J', 'Zelaya',  '1968-01-19', '3321-Castle-Spring-TX', 'F', 25000,4,'888665555' ),
            ('987654321','Jennifer', 'S', 'Wallace',  '1941-06-20', '291-Berry-Bellaire-TX', 'F', 43000,4,'333445555' ),
            ('666884444','Ramesh', 'K', 'Narayan',  '1962-09-15', '975-Fire-Oak-Humble-TX', 'M', 38000,5,'888665555'  ),
            ('453453453','Joyce', 'A', 'English',  '1972-07-31', '5631-Rice-Houston-TX', 'F', 25000,5,'333445555' ),
            ( '987987987','Ahmad', 'V', 'Jabbar', '1969-03-29', '980-Dallas-Houston-TX', 'M', 25000,4,'333445555' );


insert into dept_locations 
    values  (1,1, 'Houston'),
            (2,4, 'Stafford'),
            (3,5, 'Bellaire'),
            (4,5, 'Sugarland'),
            (5,5, 'Houston');
                                 
                                 
insert into project(Pname,Pnumber,Plocation,Dnum) 
    values  ('ProductX', 1, 'Bellaire', 5),
            ('ProductY', 2, 'Sugarland', 5),
            ('ProductZ', 3, 'Houston', 5),
            ('Computerization', 10, 'Stafford', 4),
            ('Reorganization', 20, 'Houston', 1),
            ('Newbenefits', 30, 'Stafford', 4);

insert into dependent (pk_dependent,Essn,Dependent_name,Sex,Bdate,Relationship)
    values  (111,'333445555', 'Alice', 'F', '1986-04-05', 'Daughter'),
            (222,'333445555', 'Theodore', 'M', '1983-10-25', 'Son'),
            (333,'333445555', 'Joy', 'F', '1958-05-03', 'Spouse'),
            (444,'987654321', 'Abner', 'M', '1942-02-28', 'Spouse'),
            (555,'453453453', 'Michael', 'M', '1988-01-04', 'Son'),
            (666,'453453453', 'Alice', 'F', '1988-12-30', 'Daughter'),
            (777,'666884444', 'Elizabeth', 'F', '1967-05-05', 'Spouse');  

insert into works_on (pk_works_on,Essn,Pno,Hours) 
    values  (1,'666884444', 1, 32.5),
						(2,'666884444', 2, 7.5),
            (3,'666884444', 3, 40.0),
            (4,'453453453', 1, 20.0),
            (5,'453453453', 2, 20.0),
            (6,'333445555', 2, 10.0),
            (7,'333445555', 3, 10.0),
            (8,'333445555', 10, 10.0),
            (9,'333445555', 20, 10.0),
            (10,'999887777', 30, 30.0),
            (11,'999887777', 10, 10.0),
            (12,'987987987', 10, 35.0),
            (13,'987987987', 30, 5.0),
            (14,'987654321', 30, 20.0),
            (15,'987654321', 20, 15.0),
            (16,'888665555', 20, 0.0);