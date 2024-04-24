DELIMITER //

-- Pedidos totales por cada usuario
CREATE TRIGGER trg_calcular_total_pedidos_usuario
AFTER INSERT ON PEDIDOS
FOR EACH ROW
BEGIN
    DECLARE total_pedidos INT;
    SELECT COUNT(*) INTO total_pedidos FROM PEDIDOS WHERE id_usuario = NEW.id_usuario;
    UPDATE USUARIOS SET total_pedidos = total_pedidos WHERE id_usuario = NEW.id_usuario;
END;
//

-- Libros total por autor
CREATE TRIGGER trg_calcular_total_libros_autor
AFTER INSERT ON LIBROS
FOR EACH ROW
BEGIN
    DECLARE total_libros INT;
    SELECT COUNT(*) INTO total_libros FROM LIBROS WHERE autor_id = NEW.autor_id;
    UPDATE AUTOR SET total_libros = total_libros WHERE id_autor = NEW.autor_id;
END;
//

DELIMITER ;
