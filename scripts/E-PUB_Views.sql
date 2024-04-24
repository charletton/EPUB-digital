-- Views de autores por categoria
CREATE VIEW vw_Autores_Por_Categoria AS
SELECT A.nombre AS Nombre_Autor, C.nombre AS Categoria
FROM AUTOR A
JOIN LIBROS L ON A.id_autor = L.autor_id
JOIN CATEGORIA C ON L.categoria_id = C.id_categoria
GROUP BY A.nombre, C.nombre;

-- Vista de total gastado por usuario
CREATE VIEW vw_Total_Gastado_Usuario AS
SELECT U.user_name AS Usuario, SUM(P.monto) AS Total_Gastado
FROM PEDIDOS P
JOIN USUARIOS U ON P.id_usuario = U.id_usuario
GROUP BY U.user_name;

-- View para ver que libros compraron los usuario
CREATE VIEW vw_Libros_Comprados_Por_Usuario AS
SELECT
    U.id_usuario,
    U.user_name AS nombre_usuario,
    P.fecha AS fecha_compra,
    L.id_libro,
    L.nombre AS nombre_libro,
    A.nombre AS nombre_autor,
    E.nombre AS nombre_editorial,
    C.nombre AS nombre_categoria
FROM
    USUARIOS U
    INNER JOIN PEDIDOS P ON U.id_usuario = P.id_usuario
    INNER JOIN LIBROS L ON P.id_libro = L.id_libro
    LEFT JOIN AUTOR A ON L.autor_id = A.id_autor
    LEFT JOIN EDITORIALES E ON L.editorial_id = E.id_editorial
    LEFT JOIN CATEGORIA C ON L.categoria_id = C.id_categoria;

-- View para ver comentarios
CREATE VIEW vw_Comentarios_Libros_Usuarios AS
SELECT
    C.id_comentario,
    C.comentario,
    C.fecha AS fecha_comentario,
    U.user_name AS usuario,
    L.nombre AS libro,
    A.nombre AS autor,
    E.nombre AS editorial,
    CA.nombre AS categoria
FROM
    COMENTARIOS C
    INNER JOIN USUARIOS U ON C.id_usuario = U.id_usuario
    INNER JOIN LIBROS L ON C.id_libro = L.id_libro
    LEFT JOIN AUTOR A ON L.autor_id = A.id_autor
    LEFT JOIN EDITORIALES E ON L.editorial_id = E.id_editorial
    LEFT JOIN CATEGORIA CA ON L.categoria_id = CA.id_categoria;
