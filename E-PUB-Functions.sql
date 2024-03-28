-- Funcion para agregar un autor
DELIMITER //

CREATE FUNCTION FN_add_autor (
    nombre_autor VARCHAR(100),
    descripcion_autor TEXT
)

RETURNS INT
BEGIN
    DECLARE new_id INT;

    INSERT INTO AUTOR (nombre, descripcion)
    VALUES (nombre_autor, descripcion_autor);

    SET new_id = LAST_INSERT_ID();

    RETURN new_id;
END //

DELIMITER ;

-- Funcion para agregar un libro
DELIMITER //

CREATE FUNCTION FN_add_book (
    nombre_libro VARCHAR(50),
    autor_id INT,
    categoria_id INT
)
RETURNS INT
BEGIN
    DECLARE new_id INT;

    INSERT INTO LIBROS (nombre, autor_id, categoria_id)
    VALUES (nombre_libro, autor_id, categoria_id);

    SET new_id = LAST_INSERT_ID();

    RETURN new_id;
END //
DELIMITER ;

/*
-- Ejemplo de uso
CALL FN_add_autor('Miguel de cervantes', 'Descripcion');


SHOW * FROM AUTOR; --consultar id del autor
SHOW * FROM CATEGORIA; --consultar id de categoria

CALL FN_add_book('Don quijote', reemmplazar_por_id_autor, reemplazar_id_categoria);
*/

DELIMITER //

CREATE PROCEDURE Buscar_Libros_Por_Autor_O_Categoria (
    IN autor_nombre VARCHAR(100),
    IN categoria_nombre VARCHAR(100)
)
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
BEGIN
    SELECT YEAR(fecha) AS Anio, MONTH(fecha) AS Mes, SUM(monto) AS Total_Ventas
    FROM PEDIDOS
    GROUP BY YEAR(fecha), MONTH(fecha)
    ORDER BY YEAR(fecha), MONTH(fecha);
END //

DELIMITER ;

/*
-- Ejemplos de uso
CALL Buscar_Libros_Por_Autor_O_Categoria('Marco Aurelio', '');
CALL Buscar_Libros_Por_Autor_O_Categoria('', 'Ficción');
CALL Ventas_Por_Mes();
*/
