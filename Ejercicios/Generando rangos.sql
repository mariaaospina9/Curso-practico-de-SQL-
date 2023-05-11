-- Generación de series (menor,mayor) delta neg para hacerlo al revés
SELECT *
FROM generate_series(1, 4);

SELECT *
FROM generate_series(5, 1);

SELECT *
FROM generate_series(5, 1, -2);

SELECT *
FROM generate_series(3, 4);

SELECT *
FROM generate_series(4, 3);

SELECT *
FROM generate_series(4, 4);

SELECT *
FROM generate_series(4, 3, -1);

SELECT *
FROM generate_series(3, 4, -1);
-- Decimales
SELECT *
FROM generate_series(1.1, 4.1, 1.3);

--Series con fechas - fecha actual + num de días
SELECT current_date + s.a AS dates
FROM generate_series(0, 14, 7) AS s(a);

-- Series con hooras 
SELECT *
FROM generate_series('2020-09-01 00:00:00'::timestamp,
                    '2020-09-04 12:00:00'::timestamp,
                    '10 hours');

-- Series con INNER JOIN 
SELECT a.id,a.nombre,a.apellido,a.carrera_id,s.a
FROM platzi.alumnos AS a
  INNER JOIN generate_series(0, 10) AS s(a) 
  ON s.a = a.carrera_id
ORDER BY a.carrera_id;

--Triangulo con rango generado - CAST ordinality (núm ordinarios- ayuda a ordenar) as int - agrega un índice adicional
SELECT lpad('*', CAST(ordinality as int), '*')
FROM generate_series(10, 2, -1) WITH ordinality;