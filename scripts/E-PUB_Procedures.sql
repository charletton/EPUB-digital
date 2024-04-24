DELIMITER //

CREATE PROCEDURE Buscar_Libros_Por_Autor_O_Categoria (
    IN autor_nombre VARCHAR(100),
    IN categoria_nombre VARCHAR(100)
)
READS SQL DATA
BEGIN
    SELECT L.nombre AS Nombre_Libro, A.nombre AS Nombre_Autor, C.nombre AS Categoria
    FROM LIBROS L
    JOIN AUTOR A ON L.autor_id = A.id_autor
    JOIN CATEGORIA C ON L.categoria_id = C.id_categoria
    WHERE A.nombre = autor_nombre OR C.nombre = categoria_nombre;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE Ventas_Por_Mes ()
READS SQL DATA
BEGIN
    SELECT YEAR(fecha) AS Anio, MONTH(fecha) AS Mes, SUM(monto) AS Total_Ventas
    FROM PEDIDOS
    GROUP BY YEAR(fecha), MONTH(fecha)
    ORDER BY YEAR(fecha), MONTH(fecha);
END //

DELIMITER ;
