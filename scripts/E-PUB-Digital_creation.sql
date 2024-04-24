-- Creacion del esquema
DROP SCHEMA IF EXISTS EPUB_DIGITAL;
CREATE SCHEMA IF NOT EXISTS EPUB_DIGITAL;
USE EPUB_DIGITAL;

-- Tablas
CREATE TABLE LIBROS (
    id_libro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    autor_id INT NOT NULL,
    editorial_id INT,
    categoria_id INT NOT NULL,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE USUARIOS (
    id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    total_pedidos INT NOT NULL DEFAULT 0,
    user_name VARCHAR(50) NOT NULL
);


CREATE TABLE AUTOR (
    id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    total_libros INT NOT NULL DEFAULT 0,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

CREATE TABLE PEDIDOS (
    id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_libro INT NOT NULL,
    id_usuario INT NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    fecha DATE NOT NULL
);

CREATE TABLE CATEGORIA (
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE EDITORIALES (
    id_editorial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(50)
);

CREATE TABLE COMENTARIOS (
    id_comentario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_libro INT NOT NULL,
    id_usuario INT NOT NULL,
    comentario TEXT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ALTERS
ALTER TABLE LIBROS
    ADD CONSTRAINT fk_autor_libro
    FOREIGN KEY (autor_id) REFERENCES AUTOR(id_autor),
    ADD CONSTRAINT fk_categoria_libro
    FOREIGN KEY (categoria_id) REFERENCES CATEGORIA(id_categoria),
    ADD CONSTRAINT fk_editorial_libro
    FOREIGN KEY (editorial_id) REFERENCES EDITORIALES(id_editorial);

ALTER TABLE PEDIDOS
    ADD CONSTRAINT fk_libro_pedido
    FOREIGN KEY (id_libro) REFERENCES LIBROS(id_libro),
    ADD CONSTRAINT fk_usuario_pedido
    FOREIGN KEY (id_usuario) REFERENCES USUARIOS(id_usuario);

ALTER TABLE COMENTARIOS
    ADD CONSTRAINT fk_libro_comentario
    FOREIGN KEY (id_libro) REFERENCES LIBROS(id_libro),
    ADD CONSTRAINT fk_usuario_comentario
    FOREIGN KEY (id_usuario) REFERENCES USUARIOS(id_usuario);
