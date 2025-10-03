--Dml
USE db_devconnect

INSERT INTO tb_devconnect(nome_devconnect,foto_logo_url)
VALUES
('devconnect','foto');
SELECT * FROM tb_devconnect;

INSERT INTO tb_usuario(nome_usuario,nome_completo,email,senha,foto_perfilb,id_devconnect)
VALUES
('isabella','isabella garcia','isa_bella@','1234','foto',1);
SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao(descricao,imagem_url,data_publicacao ,id_usuario)
VALUES
('oi seu sou a bella','foto','2025/03/06'1);
SELECT * FROM tb_publicacao;

INSERT INTO tb_seguidor(id_usuario,id_usuario)
VALUES
(1,1);
SELECT * FROM tb_seguidor;

INSERT INTO tb_comentario(texto,data_comentario,id_publicacao, id_usuario)
VALUES
('dsdfsdgg','2025/03/18',1,1);
SELECT * FROM tb_comentario;


INSERT INTO Tb_curtidas(id_publicacao,id_usuario)
VALUES
(1,1);
SELECT * FROM Tb_curtidas;