-- EXTRACT para seleccionar fecha - AÑO - más rápido 
SELECT EXTRACT(
    YEAR
    FROM fecha_incorporacion
  ) AS anho_incorporacion
FROM platzi.alumnos;
-- DATE_PART (HACE ALGO MUY SIMILAR)
SELECT DATE_PART('YEAR', fecha_incorporacion) AS anho_incorporacion
FROM platzi.alumnos;
-- DATE PART CON DÍA, MES Y AÑO 
SELECT DATE_PART('YEAR', fecha_incorporacion) AS anho_incorporacion,
  DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion,
  DATE_PART('DAY', fecha_incorporacion) AS dia_incorporacion
FROM platzi.alumnos;
-- DATE PART HORA, MINUTOS Y SEGUNDOS
SELECT DATE_PART('HOUR', fecha_incorporacion) AS hora_incorporacion,
  DATE_PART('MINUTE', fecha_incorporacion) AS minuto_incorporacion,
  DATE_PART('SECOND', fecha_incorporacion) AS segundo_incorporacion
FROM platzi.alumnos;