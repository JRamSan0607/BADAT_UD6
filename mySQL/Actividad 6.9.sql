-- Actividad 6.9 --

-- Ejercicio 1 --
SELECT 
    id, 
    nombre, 
    direccion, 
    nif, 
    telefono, 
    email
FROM
    clientes
WHERE
    email 
LIKE 
	'%ieslosremedios.org%'
AND 
	poblacion 
LIKE 
	'%Ubrique%'
ORDER BY 
	nombre;

-- Ejercicio 2 --
SELECT 
	ventas.id, 
    clientes.nombre cliente, 
    ventas.fecha, 
    ventas.importe_bruto, 
    ventas.importe_iva, 
    ventas.importe_total
FROM 
	ventas inner join clientes on ventas.clientes_id = clientes.id
WHERE 
	YEAR(fecha) = 2014
ORDER BY importe_total DESC limit 3;

-- Ejercicio 3 --
SELECT
FROM 
	libros
		INNER JOIN
	autores ON libros.autor_id = autored.id
		INNER JOIN
	editoriales ON libros.editorial_id = editoriales_id
WHERE 
		YEAR(fecha_edicion) = 2011
			AND stock BETWEEN 10 AND 20
ORDER BY libro.libros_id;