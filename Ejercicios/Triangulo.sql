-- Funcion lpad Cadena 15 espacios AGREGAR ALCOCHONAMIENTO A LA IZQ
SELECT lpad('sql', 15, '*');
SELECT lpad('sql', 15, '+');

-- lpad con SELECT id menor a 10
SELECT lpad('sql', id, '*')
FROM platzi.alumnos
WHERE id < 10;

-- Triangulo 10 *
SELECT lpad('*', id, '*')
FROM platzi.alumnos
WHERE id < 10;

-- Triangulo con todos los id
SELECT lpad('*', id, '*')
FROM platzi.alumnos;

-- Triangulo desordenado
SELECT lpad('*', id, '*'), carrera_id
FROM platzi.alumnos
WHERE id < 10
ORDER BY carrera_id;

-- Triangulo con num de filas sin ordenar por otro campo - CAST 
SELECT lpad('*', CAST(row_id AS INT), '*')
FROM (
    SELECT ROW_NUMBER() OVER() AS row_id,
      *
    FROM platzi.alumnos
  ) AS alumnos_with_row_id
WHERE row_id <= 5;

-- Ordenado por otro campo - propio row_id - cadenas del tamaño que tengamos
SELECT lpad('*', CAST(row_id AS INT), '*')
FROM (
    SELECT ROW_NUMBER() OVER(ORDER BY carrera_id) AS row_id,
      *
    FROM platzi.alumnos
  ) AS alumnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id;

-- RPAD cambia el orden de las variables incluidas 
SELECT rpad('sql', 15, '*');

-- Triangulo RPAD - A LA DERECHA 
SELECT rpad('-', id, '*')
FROM platzi.alumnos
WHERE id < 10;