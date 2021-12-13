//Basic Queries
//1
"SELECT Name FROM students;"
//2
"SELECT * FROM students where Age > 30;"
//3
"SELECT Name FROM students where Gender="F" and Age = 30;"
//4
"SELECT Points FROM students where Name ="Alex";"
//5
"INSERT INTO Students (Name,Age,Gender,Points)VALUES('wissal','21','F','150');"
//6
"UPDATE Students
SET Points=Points+1
WHERE Name='Basma';"
//7
"UPDATE Students
SET Points=Points-1
WHERE Name='Alex';"


//Creating Table
//1
"CREATE TABLE Graduates (
    ID Integer NOTNULL AUTOINCREMENT PRIMARYKEY,
    Name varchar(20) NOTNULL UNIQUE,
    Age Integer(3),
    Gender varchar(1)
    Points Integer(3),
    Graduation date (dd/mm/yyyy)
);
INSERT INTO Graduates (ID,Name,Age,Gender,Points)
SELECT * FROM students where name = 'Layal';"
//2
"INSERT INTO Graduates(Name,Age,Gender,Points,Graduation)VALUES("Layal",18,"F",350,"08/09/2018");"
//3
"DELETE FROM Students WHERE Name="Layal";"

