--DDL
CREATE  DATABASE db_devconnect;

GO
USE db_devconnect


CREATE TABLE tb_devconnect(
id                      INT                 IDENTITY(1,1)     PRIMARY KEY
,nome_devconnect         NVARCHAR(255)       UNIQUE            NOT NULL
,foto_logo_url           NVARCHAR(150)       UNIQUE            NOT NULL
);
GO
SELECT * FROM tb_devconnect;

CREATE TABLE tb_usuario(
id                      INT                 IDENTITY(1,1)     PRIMARY KEY
,nome_usuario            NVARCHAR(50)                          NOT NULL
,nome_completo           NVARCHAR(255)       UNIQUE            NOT NULL
,email                   NVARCHAR(255)       UNIQUE            NOT NULL
,senha                   NVARCHAR(50)                          NOT NULL
,foto_perfil             NVARCHAR(150)                         NOT NULL 
,id_devconnect           INT                                   NOT NULL

,FOREIGN KEY (id_devconnect) REFERENCES  tb_devconnect(id)
);
SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
id                       INT                 IDENTITY(1,1)     PRIMARY KEY  
,descricao               NVARCHAR(250)                         NOT NULL
,imagem_url              NVARCHAR(150)                         NOT NULL
,data_publicacao         DATE                                  NOT NULL
,id_usuario              INT                                   NOT NULL

,FOREIGN KEY (id_usuario ) REFERENCES tb_usuario (id)
);
SELECT * FROM tb_publicacao;

CREATE TABLE tb_seguidor(
id                      INT                 IDENTITY(1,1)     PRIMARY KEY  
,usuario_seguindo       NVARCHAR(150)                         NOT NULL
,usuario_seguidor       NVARCHAR(150)                         NOT NULL
,id_usuario              INT                                  NOT NULL

,FOREIGN KEY (id_usuario ) REFERENCES tb_usuario (id)
);
SELECT * FROM tb_seguidor;

CREATE TABLE tb_comentario(
id                      INT                 IDENTITY(1,1)     PRIMARY KEY 
,texto                 NVARCHAR(300)                          NOT NULL
,data_comentario       DATE                                   NOT NULL
,id_usuario            INT                                    NOT NULL
,id_publicacao         INT                                    NOT NULL

,FOREIGN KEY (id_usuario, id_publicacao ) 
 );
 SELECT * FROM tb_comentario;

 CREATE TABLE Tb_curtidas( 
 id                      INT                 IDENTITY(1,1)     PRIMARY KEY 
 ,id_usuario              INT                                   NOT NULL
 ,id_publicacao              INT                                   NOT NULL

 ,FOREIGN KEY (id_usuario, id_publicacao ) 
 
 );
 SELECT * FROM Tb_curtidas;
