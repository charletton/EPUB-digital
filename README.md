# E-PUB digital
Proyecto de una pagina digital en donde se pueden comprar libros.

## Instalacion y uso
1. Compilar script de CREATION.sql con ide de MYSQL o terminal
2. Compilar script de POPULATION.sql con ide de MYSQL o terminal
3. Compilas script de FUNCTIONS.sql con ide de MYSQL o terminal
3. Compilas script de VIEWS.sql con ide de MYSQL o terminal

## Esquemas
- Autores
- Libros
- Usuario
- Pedido
- Categoria

Autores: Este esquema esta compuesto por el id del autor, su numbre
junto a una pequena descripcion

Libros: Libros disponibles en la pagina. 

## Relaciones entre esquemas
- Autor-Libro: Cada libro tiene su autor
- Libro-Categoria: Categoria del libro 
- Usuario-Pedido: Los pedidos contienen detalles como que libro se compro, el monto y la fecha
- Usuario-Pedido: Pedidos realizados por cada usuario

![DER](https://github.com/charletton/EPUB-digital/blob/main/Modelo%20DER.png)

## Functions y stored procedures
1. Funcion para anadir autores y libros 
2. Procedures para buscar libros filtrando por autor y/o categoria 
3. Procedure para calcular ventas por mes

> Todo lo anteriormente mencionada se encuentra en el script functions.sql
### Ejemplo de uso functions add_author y add_book
Como primer paso se agrega el autor, simplemente pasando como argumento el nombre y una breve descripcion
```sql
-- Buscando por categoria y agregando
CALL FN_add_autor('Miguel de cervantes', 'Descripcion');
```
Luego se consultan las respectivas id del autor y de la categoria para agregar los datos de add_book correctamente
``` 
SELECT * FROM AUTOR; --consultar id del autor
SELECT * FROM CATEGORIA; --consultar id de categoria
CALL FN_add_book('Don quijote', reemmplazar_por_id_autor, reemplazar_id_categoria);
```
### Ejemplo de uso de stored procedures ventas_por_mes y Buscar_Libros_Por_Autor_O_Categoria

``` sql
-- Buscar libros por autor
CALL Buscar_Libros_Por_Autor_O_Categoria('Marco Aurelio', '');
-- Buscar libros por categoria
CALL Buscar_Libros_Por_Autor_O_Categoria('', 'Ficción');
-- Ver ventas por mes
CALL Ventas_Por_Mes();
```

## Views
1. View que te permite, a diferencia del filtro de libros por autor y categoria, visualizar a que categoria se dedica cada autor que se encuentra cargado en la base de datos
2. View para observar a los clientes mas frecuentes y que mas dinero invirtieron en la compania
### Ejemplos de uso de views
``` sql
-- Mostrar usuarios ordenados por mayor dinero gastado en descendente
SELECT * FROM Total_gastado_usuario ORDER BY total_gastado DESC;
-- Mostrar los autores por categoria
SELECT * FROM autores_por_categoria;
```

