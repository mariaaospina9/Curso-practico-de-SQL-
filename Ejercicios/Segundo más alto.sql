-- CON FETCH
SELECT *
FROM platzi.alumnos
FETCH FIRST 1 ROWS ONLY;
-- CON LIMIT
SELECT *
FROM platzi.alumnos
LIMIT 1;
-- con Window Functions o Funciones de ventana
SELECT *
FROM (
    SELECT ROW_NUMBER() OVER() AS row_id,
      *
    FROM platzi.alumnos
  ) AS alumnos_with_row_num
WHERE row_id = 1;
-- SELECCIONANDO los primeros 5 alumnos con FETCH 
SELECT *
FROM platzi.alumnos
FETCH FIRST 5 ROWS ONLY;
-- SELECCIONANDO los primeros 5 alumnos con LIMIT
SELECT *
FROM platzi.alumnos
LIMIT 5;
-- SELECCIONANDO los primeros 5 alumnos con Windows Functions
SELECT *
FROM (
    SELECT ROW_NUMBER() OVER() AS row_id,
      *
    FROM platzi.alumnos
  ) AS alumnos_with_row_num
WHERE row_id <= 5;
