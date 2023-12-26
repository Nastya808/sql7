CREATE TABLE People (
    person_id INT PRIMARY KEY IDENTITY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    birth_date DATE,
    address NVARCHAR(100)
);

INSERT INTO People (first_name, last_name, birth_date, address) VALUES
('John', 'Doe', '1980-05-15', '123 Main St'),
('Jane', 'Smith', '1992-08-20', '456 Oak St'),
('Bob', 'Johnson', '1975-03-10', '789 Pine St'),
('Alice', 'Brown', '1988-11-28', '101 Elm St'),
('Charlie', 'Davis', '1995-06-05', '202 Maple St');

--1
SELECT first_name, last_name, YEAR(birth_date) AS BirthYear FROM People;

--2
SELECT * FROM People WHERE address LIKE '%St%';

--3
UPDATE People SET address = REPLACE(address, 'St', 'Ave');

--4
SELECT first_name, last_name, LEFT(last_name, 2) AS Initials FROM People;

--5
SELECT first_name, last_name, RIGHT(address, 2) AS LastTwoCharacters FROM People;

--6
SELECT first_name, last_name, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(address, '0', ''), '1', ''), '2', ''), '3', ''), '4', ''), '5', ''), '6', ''), '7', ''), '8', ''), '9', '') AS ExtractedDigits FROM People;

--7
SELECT first_name, last_name, FORMAT(birth_date, 'dddd') AS DayOfWeek FROM People;

--8
SELECT * FROM People WHERE YEAR(birth_date) > 1985;

--9
SELECT AVG(DATEDIFF(YEAR, birth_date, GETDATE())) AS AverageAge FROM People;

--10
SELECT first_name, last_name, LEN(address) AS TotalCharacters FROM People;

--11
SELECT first_name, last_name, FORMAT(birth_date, 'MMMM yyyy') AS MonthAndYear FROM People;

--12
UPDATE People SET address = LTRIM(RTRIM(address));

--13
SELECT first_name, last_name, DATEDIFF(DAY, birth_date, GETDATE()) AS AgeInDays FROM People;

--14
SELECT last_name, SUM(LEN(first_name)) AS TotalFirstNameLength FROM People GROUP BY last_name;

--15
SELECT first_name, last_name, UPPER(first_name) AS UppercaseFirstName FROM People;
