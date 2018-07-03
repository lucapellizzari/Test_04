--2.
--Dipartimento (Name del dipartimento)
--Progetti (count dei progetti)

use ProjectManagement

---- WRONG!
--select Departments.Name as [Department], count(*) as [Project Count]
--from Projects
--left join Employees on Projects.ManagerId = Employees.id
--left join Departments on Employees.DepartmentId = Departments.Id
--group by Departments.Name

select Departments.Name as [Department], sum (case when Projects.Id is not null then 1 else 0 end) as [Project Count]
from Projects
left join Employees on Projects.ManagerId = Employees.id
right join Departments on Employees.DepartmentId = Departments.Id
group by Departments.Name
