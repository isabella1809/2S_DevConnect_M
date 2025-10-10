--DQl
USE db_devconnect_M;

SELECT nome_usuario FROM tb_usuario;


SELECT COUNT (imagem_url) AS imagens FROM tb_publicacao

SELECT MAX (data_comentario) AS datas  FROM tb_comentario

SELECT MIN (data_comentario) AS datas  FROM tb_comentario


--Exiba todos os nomes dos seguidores (de quem esta seguindo e de quem será seguido)



--Exiba quantos seguidores possui um respectivo usuário
SELECT 
U.nome_usuario
FROM tb_seguidor SE
INNER JOIN tb_usuario U ON SE.id_seguindo = U.id;

--Exiba todas as publicações contendo a descrição, o caminho da imagem, o nome de usuário
SELECT  
PU.descricao,
PU.imagem_url,
US.nome_usuario
FROM tb_publicacao PU
INNER JOIN tb_usuario US ON PU.id = US.id;

--Exiba todos os comentários com o nome e o texto de uma respectiva publicação

SELECT
C.texto,
FROM tb_comentario C
INNER JOIN tb_publicacao C ON C.id = PU.id;
--Exiba a quantidade de curtidas de uma respectiva publicação.

