DELIMITER //

CREATE FUNCTION FN_add_autor (
    nombre_autor VARCHAR(100),
    descripcion_autor TEXT
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE new_id INT;

    INSERT INTO AUTOR (nombre, descripcion)
    VALUES (nombre_autor, descripcion_autor);

    SET new_id = LAST_INSERT_ID();

    RETURN new_id;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION FN_add_book (
    nombre_libro VARCHAR(50),
    autor_id INT,
    categoria_id INT
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE new_id INT;

    INSERT INTO LIBROS (nombre, autor_id, categoria_id)
    VALUES (nombre_libro, autor_id, categoria_id);

    SET new_id = LAST_INSERT_ID();

    RETURN new_id;
END //

DELIMITER ;

