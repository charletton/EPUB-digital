# E-PUB digital - Introduccion
Proyecto de una pagina digital que gestiona la venta libros. Pensado para buscar por categorias, gestionar pedidos de clientes teniendo una vision global de los clientes, material de venta, clientes mas frecuentes, etc.

## Instalacion
Vease [manual de instalacion](https://github.com/charletton/EPUB-digital/blob/main/documentacion/Instalacion.txt)

## Esquemas
- Autores: Este esquema esta compuesto por el id del autor, su numbre junto a una pequena descripcion. 
- Libros: Libros disponibles en la pagina. El stock es ilimitado ya que su formato es digital 
- Usuario: Clientes que han tenido un historial de compra en la empresa
- Pedido: Pedidos junto a su fecha y monto
- Categoria: Categoria de libros (ciencia, politica, ...)

## Relaciones entre esquemas
- Autor-Libro: Cada libro tiene su autor
- Editorial-Libro: Cada libro tiene su editorial
- Libro-Categoria: Categoria del libro 
- Usuario-Pedido: Los pedidos contienen detalles como que libro se compro, el monto y la fecha
- Usuario-Pedido: Pedidos realizados por cada usuario
- Comentario-Usuario: El comentario tiene un usuario que realizo el mismo
- Comentario-libro: Cada comentario va dirigido hacia un libro

![DER](https://github.com/charletton/EPUB-digital/blob/main/documentacion/Modelo%20DER.png)

## Funciones, views y procedures
Clonar repositorio y vease [manual](https://github.com/charletton/EPUB-digital/blob/main/documentacion/Manual.html) (abrir HTML en navegador)
