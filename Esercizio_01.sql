
--1.
--NomeDipendente (concatenazione di Nome + Cognome)
--Sesso (con la lettera 'M' o 'F')

use ProjectManagement

select concat (Employees.Name, ' ', Employees.Surname) as Employee,
 (case when Employees.IsMale = 1 then 'M' else 'F' end) as Gender
from Employees