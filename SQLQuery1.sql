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