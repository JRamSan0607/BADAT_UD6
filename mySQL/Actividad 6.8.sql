-- Actividad 6.8 --

-- Actividad 1 --
SELECT 
    empleados.departamento_id,
    departamentos.nombre dpto,
    COUNT(*) numempp
FROM
    empleados
        INNER JOIN
    departamentos ON empleados.departamentos_id = departamentos.id
GROUP BY departamento_id;

-- Actividad 2 --
SELECT
	empleados.departamentos_id,
    departamentos.nombre dpto,
    COUNT(*) numempp
FROM
	empleados
		INNER JOIN departamentos ON empleados.departamento_id = departamentos.id
WHERE empleados.salario 'MAYOR' 30000
GROUP BY departamento_id;

-- Actividad 3 --
SELECT
	empleados.departamentos_id,
    departamentos.nombre dpto,
    COUNT(*) numempp
FROM
	empleados
		INNER JOIN departamentos ON empleados.departamento_id = departamentos.id
WHERE empleados.salario BETWEEN 20000 AND 50000
GROUP BY departamento_id;

-- Actividad 4 --
SELECT 
    YEAR(fecha_nac) Año, COUNT(*) NEmpleados
FROM
    empleados
GROUP BY YEAR(fecha_nac); 

-- Actividad 5 --
SELECT 
    empleados_proyectos.proyecto_id,
    proyectos.descripcion proyecto,
    SUM(horas) TotalHoras
FROM
    empleados_proyecto
        INNER JOIN
    proyectos ON empleados - proyectos.proyecto_id = proyectos.id
GROUP BY proyecto_id;

-- Actividad 6 --
SELECT 
    supervisor_id, 
    CONCAT_WS(', ',
		em.apellido,
        em.nombre) supervisor,
    COUNT(*) Num
FROM
    empleados
        INNER JOIN
    empleados em ON 
    empleados.supervisor_id = em.id
GROUP BY empleados.supervisor_id;

-- Actividad 7 --
SELECT 
    departamentos.id,
    departamentos.nombre dpto,
    COUNT(*) NumEmpleados,
    AVG(salario) SalarioMed,
    MIN(salario) SalarioMin,
    MAX(salario) SalarioMax,
    SUM(salario) SumaSalarios
FROM
    empleados
        INNER JOIN
    departamentos;