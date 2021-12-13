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

//JOINS
//1
"SELECT employees.Name, companies.Name, companies.Date
FROM employees
INNER JOIN companies ON employees.Company = companies.Name;"
//2
"SELECT employees.Name
FROM employees 
INNER JOIN companies ON companies.Name=employees.Company WHERE Companies.Date < 2000;"
//3
"SELECT employees.Company
FROM employees
INNER JOIN companies on companies.name=employees.Company
WHERE Role="Graphic Designer";"

//Count & Filter
//1
"SELECT students.name
FROM students
WHERE students.Points = (SELECT max(points) FROM students);"
//2
"SELECT AVG(Points)
FROM students;"
//3
"SELECT count(points)
FROM students
where Points = (select max(points) from students);
orrr
SELECT count(points)
FROM students
where Points = 500;"
//4
"SELECT students.Name
FROM students
WHERE students.name LIKE '%s%';"
//5
"SELECT students.name 
FROM students
ORDER BY Points ASC;"
