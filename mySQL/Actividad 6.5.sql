-- Practica 6.6
-- Descripción: Consultas Multitablas
-- Tema 6 - Lenguaje DML
-- Autor: Álvaro Moreno Gil
-- Fecha: 11/03/2022

-- 1. Realiza un producto cartesiano entre las tablas departamento y empleado 
Realiza un producto cartesiano entre las tablas departamento y proyecto 
Realiza un producto cartesiano entre las tablas empleados, departamentos y proyecto
Realizar el producto cartesiano entre las tablas Empleado y Departamento con la condición de que Salario sea superior a 30000. 
Realizar el producto cartesiano entre las tablas Empleado y Departamento usando la columna departamento_id como condición de la composición. Usar cláusula WHERE. 
Realizar la misma sentencia anterior pero usando la cláusula JOIN. 
Realizar una consulta multitabla mediante cláusula JOIN que muestre las siguientes columnas
De Empleados: id, Nombre, Apellidos, Salario, departamento_id
De Departamento: Nombre del Departamento 
Realizar la misma consulta anterior pero además deberá mostrar el Nombre y Apellidos del Jefe del Departamento. 
Realizar una consulta que muestre id, Nombre, Apellidos, NSS, Salario, supervisor_id, nombre del supervisor
Usar la cláusula JOIN para obtener de la  Tabla Empelados: NSS, Nombre, Apellidos y de la Tabla Beneficiario: nombre, genero, fecha_nacy, Parentestco. ¿Se puede usar el NATURAL JOIN?
Obtener la misma consulta anterior pero sólo para los empleados del departamento 3.
Obtener la misma consulta anterior pero sólo para los empleados del departamento 2 que ganen más de 30000.
Mostrar todos los datos de los empleados que son jefe de departamento.
Mostrar los datos de los empleados que trabajen o hayan trabajado en algún proyecto.
Añadir 2 nuevos empleados sin asignación de departamento, es decir, departamento_id se le asignará null
Añadir 2 nuevos departamentos.
 Mostrar los datos de todos los empleados junto con el departamento al que pertenecen, deberá mostrar también aquellos empleados que no tengan asignado ningún departamento.
Mostrar los departamentos junto con los datos de los empleados que tienen asignados. Deberá mostrar también aquellos departamentos que no tienen asignado ningún empleado.
Mostrar aquellos empleados que no tienen asignado ningún departamento.
Mostrar aquellos departamento que no tienen asignado ningún empleado
Obtener un informe que muestre empleado_id, nombre del empleado, proyecto_id, nombre del proyecto y las horas trabajadas de cada empleado en cada uno de los proyectos.
Mostrar aquellos empleados que no han trabajado en ningún proyecto.
Mostrar aquellos proyectos en los que no haya trabajado ningún empleado.