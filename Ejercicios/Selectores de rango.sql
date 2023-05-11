-- Seleccionar alumnos con tutor con id entre 1 y 10
SELECT *
FROM platzi.alumnos
WHERE tutor_id IN (1, 2, 3, 4);
-- Comparación
SELECT *
FROM platzi.alumnos
WHERE tutor_id >= 1
  AND tutor_id <= 10;
-- BETWEEN
SELECT *
FROM platzi.alumnos
WHERE tutor_id BETWEEN 1 AND 10;

-- Rangos de números enteros
SELECT int4range(10, 20);
SELECT int4range(1, 20) @> 3;

-- Rangos de números decimales ENTRE DISTINTOS RANGOS
SELECT numrange(11.1, 22.2) && numrange(20.0, 30.0);
SELECT numrange(11.1, 19.9) && numrange(20.0, 30.0);
-- Funciones de rangos UPPER Y LOWER 
SELECT UPPER(int4range(15, 25));
SELECT LOWER(int4range(15, 25));
-- Intersección
SELECT int4range(10, 20) * int4range(15, 25);
-- Rango vacio o no 
SELECT ISEMPTY(numrange(1, 5));

-- Seleccionar alumnos con tutor con id entre 10 y 20 
SELECT *
FROM platzi.alumnos
WHERE int4range(10, 20) @> tutor_id;
--Interseccion entre IDs de tutores y de carreras
SELECT numrange(
    (SELECT MIN(tutor_id) FROM platzi.alumnos),
    (SELECT MAX(tutor_id) FROM platzi.alumnos)
  ) * numrange(
    (SELECT MIN(carrera_id) FROM platzi.alumnos),
    (SELECT MAX(carrera_id) FROM platzi.alumnos)
  );