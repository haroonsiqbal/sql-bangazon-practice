--1.
SELECT e.FirstName, e.LastName, e.IsSupervisor, d.Name
FROM Employee e
JOIN Department d ON d.Id = e.DepartmentId
ORDER by d.Name, e.LastName, e.FirstName;
--2.
SELECT Name, Budget FROM Department
ORDER BY Budget DESC
--3.
Select d.Name, e.FirstName, e.LastName, e.IsSupervisor
FROM Department d
LEFT JOIN Employee e ON e.DepartmentId  = d.Id
WHERE e.IsSupervisor = 1;
--4.
SELECT e.DepartmentId, d.Name, COUNT(*) AS "Number of Employees"
FROM Employee e
INNER JOIN Department d ON d.Id = e.DepartmentId
GROUP BY e.DepartmentId, d.Name;
--5.
SELECT * FROM Department
UPDATE DEPARTMENT SET BUDGET = (BUDGET * 1.2)
SELECT * FROM DEPARTMENT
--6.
SELECT e.Id, e.FirstName, e.LastName
FROM Employee e
LEFT JOIN EmployeeTraining et ON et.EmployeeId = e.Id
WHERE et.Id IS NULL;
--7.
SELECT e.FirstName, e.LastName, COUNT(*) AS "Number of trainings"
FROM Employee e
INNER JOIN EmployeeTraining et ON et.EmployeeId = e.Id
GROUP BY e.Id, e.FirstName, e.LastName;