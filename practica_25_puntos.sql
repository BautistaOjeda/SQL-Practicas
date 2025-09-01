-- PUNTO 1
SELECT
    apellido1
FROM
    empleado;

-- PUNTO 2
SELECT DISTINCT
    apellido1
FROM
    empleado;

-- PUNTO 3
SELECT
    *
FROM
    empleado;

-- PUNTO 4
SELECT
    nombre,
    apellido1,
    apellido2
FROM
    empleado;

-- PUNTO 5
SELECT
    id_departamento
FROM
    empleado;

-- PUNTO 6
SELECT DISTINCT
    id_departamento
FROM
    empleado;

-- PUNTO 7  
SELECT
    nombre || ' ' || apellido1 || ' ' || apellido2 AS NOMBRECOMPLETO
FROM
    empleado;

-- PUNTO 8
SELECT
    UPPER(nombre || ' ' || apellido1 || ' ' || apellido2) AS NOMBRECOMPLETO
FROM
    empleado;

-- PUNTO 9
SELECT
    LOWER(nombre || ' ' || apellido1 || ' ' || apellido2) AS NOMBRECOMPLETO
FROM
    empleado;

-- PUNTO 10 
SELECT 
    id,
    dni,
    substr(dni, 1, length(dni) - 1) AS digitos_dni,
    substr(dni, -1)                 AS letra_dni
FROM empleado;

-- PUNTO 11
SELECT 
    nombre,
    presupuesto
FROM
    departamento
ORDER BY presupuesto ASC;

-- PUNTO 12
SELECT
    nombre
FROM 
    departamento
ORDER BY nombre ASC;

-- PUNTO 13
SELECT
    nombre
FROM 
    departamento
ORDER BY nombre DESC;

-- PUNTO 14
SELECT
    nombre,
    apellido1,
    apellido2
FROM
    empleado
ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

-- PUNTO 15
SELECT
    nombre,
    presupuesto
FROM
    departamento
ORDER BY 
    presupuesto DESC
LIMIT 3;

-- PUNTO 16 
SELECT 
    e.nombre || ' ' || e.apellido1 || ' ' || e.id AS NombreApellidoID,
    d.presupuesto,
    d.id,
    d.nombre AS NombreDepartamento
FROM empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id;

-- PUNTO 17
SELECT 
    e.nombre, 
    e.apellido1, 
    e.apellido2, 
    e.id AS id_empleado,
    d.nombre AS nombre_departamento, 
    d.presupuesto, 
    d.id AS id_departamento
FROM empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id
ORDER BY 
    d.nombre ASC, 
    e.apellido1 ASC, 
    e.apellido2 ASC, 
    e.nombre ASC;

-- PUNTO 18 
SELECT DISTINCT
    d.id AS identificadordepartamento,
    d.nombre AS nombredeldepartamento
FROM departamento d
INNER JOIN empleado e
    ON d.id = e.id_departamento;

-- PUNTO 19
SELECT 
    d.nombre AS nombre_departamento
FROM empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id
WHERE e.nombre = 'Pepe'
  AND e.apellido1 = 'Ruiz'
  AND e.apellido2 = 'Santana';

-- PUNTO 20
SELECT
    e.nombre || ' ' || e.apellido1 || ' ' || e.apellido2 AS NombreCompleto
FROM empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id
WHERE d.nombre IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY
    d.nombre ASC, 
    e.apellido1 ASC, 
    e.apellido2 ASC, 
    e.nombre ASC;

-- PUNTO 21
SELECT 
    e.id AS id_empleado,
    e.nombre, 
    e.apellido1, 
    e.apellido2,
    d.id AS id_departamento,
    d.nombre AS nombre_departamento,
    d.presupuesto,
    d.localizacion
FROM empleado e
LEFT JOIN departamento d
    ON e.id_departamento = d.id;

-- PUNTO 22
SELECT 
    d.id AS id_departamento,
    d.nombre AS nombre_departamento,
    d.presupuesto,
    d.localizacion
FROM departamento d
LEFT JOIN empleado e
    ON d.id = e.id_departamento
WHERE e.id IS NULL;

-- PUNTO 24
SELECT
    e.nombre || ' ' || e.apellido1 AS NomyApe
FROM empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id
WHERE d.presupuesto NOT BETWEEN 100000 AND 200000;

-- PUNTO 25 
SELECT
    e.nombre || ' ' || e.apellido1 AS NomyApe,
    e.dni,
    d.nombre AS nombre_departamento
FROM empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id
WHERE e.dni = '38382980M';

