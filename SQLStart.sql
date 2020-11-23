CREATE DATABASE P117

DROP DATABASE P117

USE P117;

CREATE TABLE Students(
	Id int,
	Name nvarchar(100),
	Surname nvarchar(100)
)

DROP TABLE Students

ALTER TABLE Students
ADD Age int,[Group] nvarchar(100)

ALTER TABLE Students
DROP COLUMN Groups

exec sp_rename Stu,Students

exec sp_rename 'Students.Group','Groups'

INSERT INTO Students
VALUES(1,'Mustafa','Ehmedov',21)

INSERT INTO Students
VALUES(2,'Vasif','Xammedov',37),
	  (3,'Camal','Qurbanov',25),
	  (4,'Nahide','Memishova',21)

INSERT INTO Students (Id,Name,Surname)
VALUES(5,'Melek','Muxtarli')

SELECT * FROM Students

SELECT Name 'Firstname',Surname 'Lastname' FROM Students

SELECT * FROM Students
--WHERE Id>2
--WHERE Id>=2 AND Name='Melek'
--WHERE Id>2 OR Age>35
--WHERE Id BETWEEN 2 AND 5
--WHERE Id In(3,5)
--WHERE Age is not null
--WHERE Age is null

UPDATE Students SET Age=23,Surname='Muxtarova'
WHERE Age is null

DELETE FROM Students
WHERE Id=5

SELECT LEN(Name) 'Length',Name FROM Students

SELECT CHARINDEX('a',Name),Name FROM Students

SELECT SUBSTRING(Name,3,5),Name FROM Students

ALTER TABLE Students
ADD Email nvarchar(200)

SELECT SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)) FROM Students

SELECT MIN(Age) 'Min age' FROM Students

SELECT MAX(Age) FROM Students

SELECT AVG(Age) FROM Students

SELECT Name,Age FROM Students
WHERE Age=(SELECT MAX(Age) FROM Students)

SELECT Email,Name FROM Students
WHERE Email LIKE '%code%' OR Name LIKE '%mail%'







