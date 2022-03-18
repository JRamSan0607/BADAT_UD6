-- Actividad 6.7 --

-- Actividad 1 --
USE empresa;

SELECT
	empleados.id,
    empleados.nombre,
    empleados.apellidos,
    empleados.nss,
    timestampdiff(YEAR, empleado.fecha_nac, now()) Edad,
    empleados.salario,
    departamentos.nombre dpto
    
FROM
	empleados
		LEFT JOIN 
	departamentos ON empleados.departamento_id = departamentos.id
    ORDER BY empleados.id;
    
-- Actividad 2 --
SELECT
	departamentos.id,
    departamentos.nombre,
    departamentos.jefe_departamentos_id,
    CONCAT_WS(', ',
		empleados.apellidos,
        empleados.nombre) JefeDpto,
    em.nombre,
    em.apellidos
    
FROM 
	departamentos
		INNER JOIN
	empleados ON  departamentos.jefe_departamentos_id = empleados.id
		LEFT JOIN
	empleados em ON em.departamento._id = departamentos.id;
    
-- Actividad 3 --
SELECT 	
	empleados.id,
	CONCAT_WS(', '
			empleados.nombre,
            empleados.apellidos) empleado,
	departamentos.nombre dpto,
    proyectos.descripcion,
    empleados_proyectos.horas
FROM
	empleados
		INNER JOIN
	departamentos ON empleados.departamentos_id = departamentos.id
		INNER JOIN 
	empleados_proyectos ON empleados_proyectos.empleado_id = empleados.id
		INNER JOIN
	proyectos ON proyectos.id = empleados_proyectos.proyecto_id
ORDER BY empleados_proyectos.horas DESC;

-- Actividad 4 --
SELECT 
	proyectos.id,
    proyectos.descripcion,
    proyectos.num_proyecto,
    proyectos.fecha_inicio,
    departamentos.nombre_dep,
    CONCAT_WS(', ',
		empleados.nombre,
		empleados.apellido) empleado,
	empleados_proyectos.horas
FROM
	proyectos
		INNER JOIN
	departamentos ON proyectos.departamento_id = departamentos.id
		INNER JOIN
	empleados_proyectos ON empleados_proyectos.proyecto_id = empleados.id
		INNER JOIN 
	empleados ON empleados_proyectos.empleado_id = empleados.id
order by empleados_proyecto.horas;