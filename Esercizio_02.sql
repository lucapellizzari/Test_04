--2.
--Dipartimento (Name del dipartimento)
--Progetti (count dei progetti)

use ProjectManagement

select Departments.Name as [Department], count(*) as [Project Count]
from Projects
left join Employees on Projects.ManagerId = Employees.id
left join Departments on Employees.DepartmentId = Departments.Id
group by Departments.Name