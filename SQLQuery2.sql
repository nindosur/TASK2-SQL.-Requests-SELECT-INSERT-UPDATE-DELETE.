--INSERT INTO Departments (Building, Financing, Floor, Name) VALUES
--(1, 500000, 3, 'Surgery'),
--(2, 700000, 4, 'Cardiology'),
--(3, 400000, 2, 'Neurology'),
--(4, 900000, 4, 'Oncology'),
--(5, 600000, 5, 'Pediatrics');

--INSERT INTO Diseases (Name, Severity) VALUES
--('COVID-19', 5),
--('Heart Attack', 4),
--('Stroke', 3),
--('Cancer', 5),
--('Common Cold', 1);

--INSERT INTO Doctors (Name, Phone, Premium, Salary, Surname) VALUES
--('John', '9999999999', 5000, 10000, 'Doe'),
--('Mary', '8888888888', 7000, 12000, 'Smith'),
--('David', NULL, 3000, 8000, 'Johnson'),
--('Anna', '7777777777', 4000, 9000, 'Lee'),
--('Michael', '6666666666', 6000, 11000, 'Wang');

--INSERT INTO Examinations (DayOfWeek, EndTime, Name, StartTime) VALUES
--(2, '12:00', 'Blood Test', '08:00'),
--(3, '15:30',  'MRI', '13:00'),
--(5, '16:00', 'X-Ray', '10:00'),
--(1, '17:30', 'CT Scan', '14:00'),
--(6, '11:00', 'Ultrasound', '09:00');

--INSERT INTO Wards (Building, Floor, Name) VALUES
--(1, 3, 'Surgery Ward 1'),
--(2, 5, 'Cardiology Ward 2'),
--(3, 2, 'Neurology Ward 3'),
--(4, 4, 'Oncology Ward 4'),
--(5, 3, 'Pediatrics Ward 5');

--1
SELECT * FROM Wards;

--2
SELECT Surname, Phone FROM Doctors;

--3
SELECT DISTINCT Floor FROM Wards;

--4
SELECT Name AS 'Name of Disease', Severity AS 'Severity of Disease' FROM Diseases;

--5
SELECT D.Name AS 'Disease Name', T.Surname AS 'Doctor Surname', W.Name AS 'Ward Name' FROM Diseases AS D, Doctors AS T, Wards AS W;

--6
SELECT Name FROM Departments 
WHERE Building = 5 AND Financing < 30000;

--7
SELECT Name FROM Departments 
WHERE Building = 3 AND Financing >= 12000 AND Financing <=15000;

--8
SELECT Name FROM Wards 
WHERE Building IN (4, 5) AND Floor = 1;

--9
SELECT Name, Building, Financing FROM Departments
WHERE Building = 3 OR Building = 6 AND Financing < 11000 OR Financing > 25000;

--10
SELECT Surname FROM Doctors
WHERE Salary + Premium > 1500;

--11
SELECT Surname FROM Doctors
WHERE Salary/2 > 3*Premium;

--12
SELECT DISTINCT Name FROM Examinations
WHERE DayOfWeek <= 3 AND StartTime >= '12:00' AND EndTime <= '15:00';

--13
SELECT Name, Building FROM Departments
WHERE Building IN (1,3,8,10);

--14
SELECT Name FROM Diseases
WHERE Severity NOT IN (1,3);

--15
SELECT Name FROM Departments
WHERE Building NOT IN (1,3);

--16
SELECT Name FROM Departments
WHERE Building IN (1,3);

--17
SELECT Surname FROM Doctors
WHERE Surname LIKE 'N%';