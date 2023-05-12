# Curso Práctico SQL
Ejercicios de curso práctico de platzi 
![SQL 1](SQL1.jpg)


## Particiones y agregaciones
**- ROW NUMBER():** Número de la tupla que estamos usando en ese momento.

**- OVER( [PARTICIÓN POR columna]- [ORDEN POR columna DIR] ):** Particionar y ordenar la WF.

**- PARTICIÓN POR(columna/s):** Grupo por para la WF (se coloca dentro de OVER).

**- FIRST VALUE(column):** Primer valor de una serie de datos.

**- LAST_VALUE (columna):** Último valor de una serie de datos.

**- NTH_ VALUE(column, row number):** Recibe la columna y el número de fila que queremos devolver de una serie de datos (valor enésimo).

**- RANK():** Lugar que ocupa de acuerdo a un orden de cada tupla, deja espacios entre los valores.

**- DENSE_RANK():** Es un rango más denso que trata de eliminar los espacios que nos deja RANK.

**- PERCENT_RANK():** Categoriza de acuerdo a lugar que ocupa igual que los anteriores pero por porcentajes.|

