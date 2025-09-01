--PUNTO1

SELECT
    apellido1
from
    empleado;
    
--PUNTO2

Select distinct
     apellido1
from
    empleado;
    
--PUNTO3

Select
    *
from
    empleado;

--PUNTO4

select
    nombre,
    apellido1,
    apellido2
from
    empleado;
    
--PUNTO5

select
    id_departamento
from
    empleado;
    
--PUNTO6

select distinct
    id_departamento
from
    empleado;
    
--PUNTO7

Select
    Concat(nombre, ' ', apellido1, ' ', apellido2) as NOMBRECOMPLETO
FROM
    EMPLEADO;
    
--PUNTO8

Select
    upper(Concat(nombre, ' ', apellido1, ' ', apellido2)) as NOMBRECOMPLETO
FROM
    EMPLEADO;
    
--PUNTO9

Select
    lower(Concat(nombre, ' ', apellido1, ' ', apellido2)) as NOMBRECOMPLETO
FROM
    EMPLEADO;
    
--PUNTO10

SELECT 
    id,
    dni,
    substr(dni, 1, length(dni)-1) AS digitos_dni,
    substr(dni, length(dni), 1) AS letra_dni
FROM empleado;

--PUNTO11

SELECT 
    nombre,
    presupuesto
from
    departamento
order by presupuesto asc;

--PUNTO12

Select
    nombre
from 
    departamento
order by nombre asc;

--PUNTO13

Select
    nombre
from 
    departamento
order by nombre desc;

--PUNTO14

select
    nombre,
    apellido1,
    apellido2
from
    empleado
order by apellido1 asc, apellido2 asc, nombre asc;

--PUNTO15

select
    nombre,
    presupuesto
from
    departamento
order by 
    presupuesto desc
    limit 3;

--PUNTO 16

select 
    concat(e.nombre, e.apellido1,' ',e.id) as NombreApellidoID,
    d.presupuesto, d.id, concat(d.nombre) as Nombredepartamento
from empleado e
inner join departamento d
    on e.id=d.id;
    
--PUNTO 17

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
    
--PUNTO 18

SELECT 
    d.id as identificadordepartamento,
    d.nombre as nombredeldepartamento
from departamento d
inner join empleado e
    on d.id = e.id_departamento;
    
--PUNTO 19

SELECT 
    d.nombre AS nombre_departamento
FROM empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id
WHERE e.nombre = 'Pepe'
  AND e.apellido1 = 'Ruiz'
  AND e.apellido2 = 'Santana';
  
--PUNTO 20

select
    concat(e.nombre,' ',e.apellido1,' ',e.apellido2) as Nombrecompleto
from empleado e
inner join departamento d
    on e.id_departamento = d.id
WHERE d.nombre IN ('Sistemas', 'Contabilidad', 'I+D')
order by
    d.nombre ASC, 
    e.apellido1 ASC, 
    e.apellido2 ASC, 
    e.nombre ASC;
    
--PUNTO 21 

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

--PUNTO22

SELECT 
    d.id AS id_departamento,
    d.nombre AS nombre_departamento,
    d.presupuesto,
    d.localizacion
FROM departamento d
LEFT JOIN empleado e
    ON d.id = e.id_departamento
WHERE e.id IS NULL;

--PUNTO24

SELECT
    CONCAT(e.nombre, ' ', e.apellido1) AS NomyApe
FROM empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id
WHERE d.presupuesto NOT BETWEEN 100000 AND 200000;

--PUNTO25

SELECT
    concat(e.nombre, ' ', apellido1) as NomyApe,
    e.dni,
    d.nombre
from empleado e
INNER JOIN departamento d
    ON e.id_departamento = d.id
where e.dni = '38382980M';
