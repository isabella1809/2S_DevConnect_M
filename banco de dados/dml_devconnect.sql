--Dml
USE db_devconnect_M;


INSERT INTO tb_usuario(nome_completo,nome_usuario,email,senha,foto_perfil_url)
VALUES('edu','e.du_','edu@gmail.com','1234','www.com.DevConnect/bella');

SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao(descricao,imagem_url,data_publicacao ,id_usuario)
VALUES
('oi seu sou a bella','foto','2025/03/06',1);

SELECT * FROM tb_publicacao;

INSERT INTO tb_seguidor(id_seguindo, id_usuario_seguidor)
VALUES(1,3);

SELECT * FROM tb_seguidor;

INSERT INTO tb_comentario(texto,data_comentario,id_publicacao, id_usuario)
VALUES
('dsdfsdgg','2025-03-18',1,1);

SELECT * FROM tb_comentario;


INSERT INTO Tb_curtida(id_publicacao,id_usuario)
VALUES
(1,3);


SELECT * FROM Tb_curtida;