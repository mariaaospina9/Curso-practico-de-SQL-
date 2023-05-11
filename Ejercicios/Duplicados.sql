-- Insertar duplicado para realizar la actividad 
INSERT INTO platzi.alumnos (id,nombre,apellido,email,colegiatura,fecha_incorporacion,carrera_id,tutor_id)
VALUES (1001, 'Pamelina',null,'pmylchreestrr@salon.com',4800,'2020-04-26 10:18:51',12,16);
-- SELECT DUPLICADOS con el mismo id (data igual)
SELECT *
FROM platzi.alumnos AS ou
WHERE (
    SELECT COUNT(*)
    FROM platzi.alumnos AS inr
    WHERE ou.id = inr.id
  ) > 1;
-- SELECT A LA TABLA (:: cast - convierte qa texto a count) HAVING AL FINAL DE TODO LO QUE SEA MAYOR A 1
SELECT (platzi.alumnos.*)::text,
  COUNT(*)
FROM platzi.alumnos
GROUP BY platzi.alumnos.*
HAVING COUNT(*) > 1;
-- DUPLICADOS - GROUP BY sin ID
SELECT (
    platzi.alumnos.nombre,
    platzi.alumnos.apellido,
    platzi.alumnos.email,
    platzi.alumnos.colegiatura,
    platzi.alumnos.fecha_incorporacion,
    platzi.alumnos.carrera_id,
    platzi.alumnos.tutor_id
  )::text,
  COUNT(*)
FROM platzi.alumnos
GROUP BY platzi.alumnos.nombre,
  platzi.alumnos.apellido,
  platzi.alumnos.email,
  platzi.alumnos.colegiatura,
  platzi.alumnos.fecha_incorporacion,
  platzi.alumnos.carrera_id,
  platzi.alumnos.tutor_id
HAVING COUNT(*) > 1;
--SUBQUERYS - PARTICION SECCION DE DATOS MENOS EL ID
SELECT *
FROM (
    SELECT id,
      ROW_NUMBER() OVER(
        PARTITION BY nombre,
            apellido,
            email,
            colegiatura,
            fecha_incorporacion,
            carrera_id,
            tutor_id
        ORDER BY id ASC
      ) AS row
    *
    FROM platzi.alumnos
  ) AS duplicados
WHERE duplicados.row > 1;
-- BORRAR DUPLICADOS AÑADIDOS PARA ACTIVIDAD
DELETE FROM platzi.alumnos
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
          ROW_NUMBER() OVER(
            PARTITION BY nombre,
            apellido,
            email,
            colegiatura,
            fecha_incorporacion,
            carrera_id,
            tutor_id
            ORDER BY id ASC
          ) AS row
        FROM platzi.alumnos
      ) AS duplicados
    WHERE duplicados.row > 1
  );