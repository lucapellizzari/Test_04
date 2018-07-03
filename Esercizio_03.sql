--3.
--Elenco di progetti non ancora chiusi.
--Id (Id del progetto)
   --Dipartimento (Name del dipartimento del progetto, che sarebbe il nome del dipartimento del
--manager!)
--Nome (Name del progetto)
--Manager (Nome del manager)

use ProjectManagement

select Projects.Id as ProjectID, Departments.Name as Department, Projects.Name as [Project Name], 
		concat (Employees.Name, ' ', Employees.Surname) as Manager
from Projects
left join Employees on Projects.ManagerId = Employees.id
left join Departments on Employees.DepartmentId = Departments.id
