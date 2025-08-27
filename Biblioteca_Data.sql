Use Biblioteca

--- Pais:
set identity_Insert Pais ON;
INSERT INTO Pais (Id,Pais) VALUES (1,'Mexico');
INSERT INTO Pais (Id,Pais) VALUES (2,'España');
INSERT INTO Pais (Id,Pais) VALUES (3,'USA');
INSERT INTO Pais (Id,Pais) VALUES (4,'Colombia');
INSERT INTO Pais (Id,Pais) VALUES (5,'Reino Unido');
set identity_Insert Pais OFF;

--- Ciudad:
set identity_Insert Ciudad ON;
INSERT INTO Ciudad (Id,Ciudad, Id_Pais) VALUES (111,'Ciudad de México', 1);
INSERT INTO Ciudad (Id,Ciudad, Id_Pais) VALUES (221,'Barcelona', 2);
INSERT INTO Ciudad (Id,Ciudad, Id_Pais) VALUES (222,'Madrid', 2);
INSERT INTO Ciudad (Id,Ciudad, Id_Pais) VALUES (551,'Londres', 5);
set identity_Insert Ciudad OFF;

---Editorial:
set identity_Insert Editorial ON;
INSERT INTO Editorial (Id,Editorial, Id_Ciudad) VALUES (1,'Editorial Planeta', 221);
INSERT INTO Editorial (Id,Editorial, Id_Ciudad) VALUES (2,'Boletín de la Real Academia Española', 222);
INSERT INTO Editorial (Id,Editorial, Id_Ciudad) VALUES (3,'Libros Penguin', 551);
INSERT INTO Editorial (Id,Editorial, Id_Ciudad) VALUES (4,'Editorial Planeta', 111);
set identity_Insert Editorial OFF;

---Autor:
set identity_Insert Autor ON;
INSERT INTO Autor (Id,Nombre, Id_Pais) VALUES (1,'Gabriel Garcia Marquez', 4);
INSERT INTO Autor (Id,Nombre, Id_Pais) VALUES (2,'Octavio Paz', 1);
INSERT INTO Autor (Id,Nombre, Id_Pais) VALUES (3,'Mark Twain', 3);
INSERT INTO Autor (Id,Nombre, Id_Pais) VALUES (4,'Real Academia Española', 2);
set identity_Insert Autor OFF;

--Documento:
set identity_Insert Documento ON;
INSERT INTO Documento (Id,Tipo, Titulo, Año, Id_Editorial, Paginas) VALUES (1,'Libro', 'El laberinto de la soledad', 1950, 1, 350);
INSERT INTO Documento (Id,Tipo,Titulo, Año, Id_Editorial, Paginas) VALUES (2,'Libro','Cien Años de Soledad',1967, 4, 417);
INSERT INTO Documento (Id,Tipo,Titulo, Año, Id_Editorial, Paginas) VALUES (3,'Libro','Las Aventuras de Huckleberry Finn',1884, 3, 366);
INSERT INTO Documento (Id,Tipo, Titulo, Año, Id_Editorial, Paginas) VALUES (4,'Revista', 'Revista de la RAE', 2020, 2, 120);
set identity_Insert Documento OFF;


---Libro:
---El laberinto de la soledad
INSERT INTO Libro (Id, Edicion, ISBN) VALUES (1, 1, '9781402894626');
---Cien Años de Soledad
INSERT INTO Libro (Id, Edicion, ISBN) VALUES (2, 1,'9783161484100');
---Las Aventuras de Huckleberry Finn
INSERT INTO Libro (Id, Edicion, ISBN) VALUES (3, 1,'9780142437179');

--- Documento seriado:
set identity_Insert Documento_Seriado ON;
---Revista de la RAE
INSERT INTO Documento_Seriado (Id, Volumen, ISSN) VALUES (4, 45, '12345678');
set identity_Insert Documento_Seriado OFF;


---Documento_Autor:
set identity_Insert Documento_Autor ON;
-- El laberinto de la soledad → Octavio Paz
INSERT INTO Documento_Autor (Id_Documento, Id_Autor) VALUES (1, 2);
---Cien Años de Soledad →Gabriel Garcia Marquez
INSERT INTO Documento_Autor (Id_Documento, Id_Autor) VALUES (2, 1);
---Las Aventuras de Huckleberry Finn → Mark Twain
INSERT INTO Documento_Autor (Id_Documento, Id_Autor) VALUES (3, 3);
-- Revista de la RAE → Real Academia Española
INSERT INTO Documento_Autor (Id_Documento, Id_Autor) VALUES (4, 4);
set identity_Insert Documento_Autor OFF;

---Tema:
set identity_Insert Tema ON;
INSERT INTO Tema (Id,Tema) VALUES (1,'Literatura');
INSERT INTO Tema (Id,Tema) VALUES (2,'Lingüística');
INSERT INTO Tema (Id,Tema) VALUES (3,'Realismo Magico');
INSERT INTO Tema (Id,Tema) VALUES (4,'Aventura');
set identity_Insert Tema OFF;

---Documento_Tema:
set identity_Insert Documento_Tema ON;
-- Libro "El laberinto de la soledad" → Literatura 
INSERT INTO Documento_Tema (Id_Documento, Id_Tema) VALUES (1, 1);
-- Revista de la RAE → Lingüística
INSERT INTO Documento_Tema (Id_Documento, Id_Tema) VALUES (4, 2);
-- Libro "Cien Años de Soledad" → Realismo Magico
INSERT INTO Documento_Tema  (Id_Documento, Id_Tema) VALUES (2, 3);
-- Libro "Las Aventuras de Huckleberry Finn" → Aventura 
INSERT INTO Documento_Tema (Id_Documento, Id_Tema) VALUES (3, 4);
set identity_Insert Documento_Tema OFF;
