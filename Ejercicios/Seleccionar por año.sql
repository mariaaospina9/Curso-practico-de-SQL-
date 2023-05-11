-- Extraer alumnos de algunos años con EXTRACT
SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2019;
-- DATE_PART
SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2019;
-- SUBQUERY 
SELECT *
FROM (
    SELECT *,
      DATE_PART('YEAR', fecha_incorporacion) AS anho_incorporacion
    FROM platzi.alumnos
  ) AS alumnos_con_anho
WHERE anho_incorporacion = 2019;
--SELECT Alumnos incorporados en mayo del 2018
SELECT *
FROM (
    SELECT *,
      DATE_PART('YEAR', fecha_incorporacion) AS anho_incorporacion,
      DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion
    FROM platzi.alumnos
  ) AS alumnos_con_anho
WHERE anho_incorporacion = 2018
  AND mes_incorporacion = 5;