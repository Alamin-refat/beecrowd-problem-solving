/*For each employee, list the department name, employee name, gross salary, total discounts, and the net salary. The output must be grouped by department and division. In each division, the employees' list must be presented in a decreasingly way by the net salary.

Tip: You can use the function COALESCE(check_expression , 0) to substitute some value null for zero; Furthermore, you also can use the function ROUND(value, 2) to show the values with 2 decimal places.*/

SELECT
	departamento.nome AS Departamento,
	empregado.nome AS Empregado,
	
	CASE WHEN composicao_salarios.total_vencimentos = 0.00 THEN 0
		 ELSE composicao_salarios.total_vencimentos END AS "Salario Bruto",
		 
	CASE WHEN composicao_salarios.total_descontos = 0.00 THEN 0
		 ELSE composicao_salarios.total_descontos END AS "Total Desconto",
		 
	CASE WHEN composicao_salarios.salario = 0.00 THEN 0
		 ELSE composicao_salarios.salario END AS "Salario Liquidoaws"
FROM (

	SELECT
		venc_agrupados.lotacao,
		venc_agrupados.matr,
		venc_agrupados.total_vencimentos,
		desc_agrupados.total_descontos,
		ROUND(SUM(total_vencimentos) - COALESCE(SUM(total_descontos), 0), 2) AS salario
	FROM (

		SELECT
			empregado.matr,
			empregado.lotacao,
			COALESCE(SUM(vencimento.valor), 0) AS total_vencimentos
		FROM empregado
		LEFT JOIN emp_venc
			ON empregado.matr = emp_venc.matr
		LEFT JOIN vencimento
			ON emp_venc.cod_venc = vencimento.cod_venc
		GROUP BY empregado.matr, empregado.lotacao

		) AS venc_agrupados
		LEFT JOIN (

			SELECT
				empregado.matr,
				empregado.lotacao,
				COALESCE(SUM(desconto.valor), 0) AS total_descontos
			FROM empregado
			LEFT JOIN emp_desc
				ON empregado.matr = emp_desc.matr
			LEFT JOIN desconto
				ON emp_desc.cod_desc = desconto.cod_desc
			GROUP BY empregado.matr, empregado.lotacao

		) AS desc_agrupados
		ON venc_agrupados.matr = desc_agrupados.matr
	GROUP BY venc_agrupados.matr, venc_agrupados.lotacao, 
		venc_agrupados.total_vencimentos, desc_agrupados.total_descontos
	
) AS composicao_salarios
INNER JOIN departamento
	ON composicao_salarios.lotacao = departamento.cod_dep
INNER JOIN empregado
	ON composicao_salarios.matr = empregado.matr
ORDER BY salario DESC
;
