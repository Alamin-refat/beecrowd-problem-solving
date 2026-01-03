# 2989-Departments and Divisions

/*For each department, show the department name, your divisions' name, with your respective average salary and the highest salary for each division. The result must be ordered in a descending way using the average salary.

Tip: You can use the function COALESCE(check_expression, 0) to substitute some value null for zero; Furthermore, you also can use the function ROUND(value, 2) to show the values with 2 decimal places.*/

WITH vencimentos AS (
    SELECT emp.matr, COALESCE(SUM(v.valor), 0) AS total_venc
    FROM empregado emp
    LEFT JOIN emp_venc ev ON emp.matr = ev.matr
    LEFT JOIN vencimento v ON ev.cod_venc = v.cod_venc
    GROUP BY emp.matr
),
descontos AS (
    SELECT emp.matr, COALESCE(SUM(d.valor), 0) AS total_desc
    FROM empregado emp
    LEFT JOIN emp_desc ed ON emp.matr = ed.matr
    LEFT JOIN desconto d ON ed.cod_desc = d.cod_desc
    GROUP BY emp.matr
),
salario_por_empregado AS (
    SELECT 
        e.matr,
        e.lotacao AS cod_dep,
        e.lotacao_div AS cod_divisao,
        COALESCE(v.total_venc, 0) - COALESCE(d.total_desc, 0) AS salario_liquido
    FROM empregado e
    LEFT JOIN vencimentos v ON e.matr = v.matr
    LEFT JOIN descontos d ON e.matr = d.matr
)
SELECT 
    d.nome AS departamento,
    dv.nome AS divisao,
    ROUND(AVG(s.salario_liquido), 2) AS media,
    ROUND(MAX(s.salario_liquido), 2) AS maior
FROM salario_por_empregado s
JOIN departamento d ON s.cod_dep = d.cod_dep
JOIN divisao dv ON s.cod_divisao = dv.cod_divisao
GROUP BY d.nome, dv.nome, dv.cod_divisao
ORDER BY media DESC;