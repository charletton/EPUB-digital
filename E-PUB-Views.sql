-- Views de autores por categoria
CREATE VIEW Autores_Por_Categoria AS
SELECT A.nombre AS Nombre_Autor, C.nombre AS Categoria
FROM AUTOR A
JOIN LIBROS L ON A.id_autor = L.autor_id
JOIN CATEGORIA C ON L.categoria_id = C.id_categoria
GROUP BY A.nombre, C.nombre;

-- Vista de total gastado por usuario
CREATE VIEW Total_Gastado_Usuario AS
SELECT U.user_name AS Usuario, SUM(P.monto) AS Total_Gastado
FROM PEDIDOS P
JOIN USUARIOS U ON P.id_usuario = U.id_usuario
GROUP BY U.user_name;

