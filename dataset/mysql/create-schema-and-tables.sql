create database if not exists azure_company;
use azure_company;

create table  if not exists departament(
    Dno int not null primary key,
    Dname varchar(15) not null unique,
    Mgr_ssn char(9) not null,
    Mgr_start_date date,
    Dept_create_date date,
 constraint chk_date_dept check (Dept_create_date < Mgr_start_date)
);

create table dept_locations(
    pk_dept_location int not null primary key,
    Dno int not null,
    Dlocation varchar(15) not null,
 constraint foreign key (Dno) references departament (Dno)
 on delete cascade
 on update cascade
);

CREATE TABLE employee(
    Ssn char(9) not null primary key,
    Fname varchar(15) not null,
    Minit char,
    Lname varchar(15) not null,
    Bdate date,
    Address varchar(30),
    Sex char,
    Salary decimal(10,2),
    Dnumber int,
    Mssn char(9),
constraint chk_salary_employee check (Salary> 2000.0),
constraint fk_Dnumber1 foreign key(Dnumber) references departament(Dno)
on delete set null
on update cascade
);

alter table employee 
	add constraint fk_employee 
	foreign key(Mssn) references employee(Ssn)
    on delete set null
    on update cascade;

create table project(
    Pnumber int not null primary key,
    Pname varchar(15) not null unique,
    Plocation varchar(15),
    Dnum int,
constraint foreign key (Dnum) references departament(Dno)
on delete set null
on update cascade
);

create table works_on(
    pk_works_on int not null primary key,
    Essn char(9),
    Pno int,
    Hours decimal(3,1) not null,
constraint foreign key (Essn) references employee(Ssn),
constraint foreign key (Pno) references project(Pnumber)
);

create table dependent(
    pk_dependent int not null primary key,
    Essn char(9),
    Dependent_name varchar(15) not null,
    Sex char,
    Bdate date,
    Relationship varchar(8),
constraint fk_dependent1 foreign key (Essn) references employee(Ssn)
);