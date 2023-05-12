# Curso Práctico SQL-
Ejercicios de curso práctico de platzi 
![SQL 1](SQL1.jpg)


# Particiones y agregaciones-
- ROW_NUMBER(): nos da el numero de la tupla que estamos utilizando en ese momento.
- OVER([PARTITION BY column] [ORDER BY column DIR]): nos deja Particionar y Ordenar la window function.
- PARTITION BY(column/s): es un group by para la window function, se coloca dentro de OVER.
- FIRST_VALUE(column): devuelve el primer valor de una serie de datos.
- LAST_VALUE(column): Devuelve el ultimo valor de una serie de datos.
- NTH_VALUE(column, row_number): Recibe la columna y el numero de row que queremos devolver de una serie de datos
- RANK(): nos dice el lugar que ocupa de acuerdo a el orden de cada tupla, deja gaps entre los valores.
- DENSE_RANK(): Es un rango mas denso que trata de eliminar los gaps que nos deja RANK.
- PERCENT_RANK(): Categoriza de acuerdo a lugar que ocupa igual que los anteriores pero por porcentajes.
