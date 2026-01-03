# 2990-Employees CPF

/*Show the CPF, employees (empregados) name and department (departamentos) name of the employees that don't work (trabalha) in any project (projetos). The result must be order by CPF.*/

SELECT 
    e.cpf,
    e.enome,
    d.dnome
FROM empregados e
JOIN departamentos d ON e.dnumero = d.dnumero
LEFT JOIN trabalha t ON e.cpf = t.cpf_emp
WHERE t.cpf_emp IS NULL
ORDER BY e.cpf;