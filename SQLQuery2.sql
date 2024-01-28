CREATE TABLE StudentRegDb (
    Sno INT IDENTITY(1,1),
    studentid VARCHAR(50)PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Dept VARCHAR(20),
    Password VARCHAR(50),
    Date VARCHAR(50)
);
Select * From StudentRegDb

CREATE TABLE ActivityDB (
	StudId VARCHAR(50) PRIMARY KEY,
	Name VARCHAR(50),
	Dept VARCHAR(20),
	Activity VARCHAR(50),
	Org VARCHAR(50),
	Doa VARCHAR(50),
	Remark VARCHAR(50));

Select * From ActivityDB

CREATE TABLE DeptloginDB (
	facultyid VARCHAR(50),
	password VARCHAR(50),
	dept VARCHAR(50));

INSERT INTO DeptloginDB VALUES ('F001',123,'CSE'),('F002',321,'CIVIL'),('F008',365,'IT');
