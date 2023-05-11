-- Alumnos sin carrera LEFT JOIN EXCLUSIVO
SELECT a.nombre, a.apellido, a.carrera_id, c.id, c.carrera
FROM platzi.alumnos AS a
  LEFT JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE c.id IS NULL;

-- Alumnos con o sin carrera
SELECT a.nombre,a.apellido,a.carrera_id,c.id,c.carrera
FROM platzi.alumnos AS a
  LEFT JOIN platzi.carreras AS c ON a.carrera_id = c.id
ORDER BY c.id DESC;

-- Carreras con o sin alumnos
SELECT a.nombre,a.apellido,a.carrera_id,c.id,c.carrera
FROM platzi.alumnos AS a
  RIGHT JOIN platzi.carreras AS c ON a.carrera_id = c.id
ORDER BY c.id DESC;

--Carreras sin alumnos RIGHT JOIN EXCLUSIVO 
SELECT a.nombre,a.apellido,a.carrera_id,c.id,c.carrera
FROM platzi.alumnos AS a
  RIGHT JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE a.id IS NULL
ORDER BY c.id DESC;

-- Alumnos con carrera INNER JOIN PARTE EN COMÚN 
SELECT a.nombre,a.apellido,a.carrera_id,c.id,c.carrera
FROM platzi.alumnos AS a
  INNER JOIN platzi.carreras AS c ON a.carrera_id = c.id
ORDER BY c.id DESC;

-- Alumnos sin carrera y carreras sin alumnos DIFERENCIA SIMETRICA FULL OUTER JOIN
SELECT a.nombre,a.apellido,a.carrera_id,c.id,c.carrera
FROM platzi.alumnos AS a
  FULL OUTER JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE a.id IS NULL
  OR c.id IS NULL
ORDER BY a.carrera_id DESC,
  c.id DESC;