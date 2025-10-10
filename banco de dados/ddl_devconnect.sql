--DDL
CREATE  DATABASE db_devconnect_M;

USE db_devconnect_M;

GO
CREATE TABLE tb_usuario (
 id        INT      IDENTITY (1,1)        PRIMARY KEY
,nome_completo      NVARCHAR (255)        NOT NULL
,nome_usuario       NVARCHAR (50)         UNIQUE            NOT NULL
,email              NVARCHAR (255)        UNIQUE            NOT NULL
,senha              NVARCHAR (50)         NOT NULL
,foto_perfil_url    NVARCHAR (150)        NULL
);
GO
SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
id                       INT                 IDENTITY(1,1)     PRIMARY KEY  
,descricao               NVARCHAR(255)                         NOT NULL
,imagem_url              NVARCHAR(255)                         NULL
,data_publicacao         DATE                                  NOT NULL
,id_usuario              INT                                   NOT NULL

,FOREIGN KEY (id_usuario ) REFERENCES tb_usuario (id)
);

SELECT * FROM tb_publicacao;


 CREATE TABLE Tb_curtida( 
 id                      INT                 IDENTITY(1,1)     PRIMARY KEY 
 ,id_usuario              INT                                   NOT NULL
 ,id_publicacao              INT                                   NOT NULL

 ,FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
 ,FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
 );
 SELECT * FROM Tb_curtida;
 

 CREATE TABLE tb_comentario(
id                      INT                 IDENTITY(1,1)     PRIMARY KEY,
texto                 NVARCHAR(300)                          NOT NULL,
data_comentario       DATE                                   NOT NULL,
id_usuario            INT                                    NOT NULL,
id_publicacao         INT                                    NOT NULL,


FOREIGN KEY (id_usuario ) REFERENCES tb_usuario (id),
FOREIGN KEY (id_publicacao ) REFERENCES tb_publicacao (id),
 );
 SELECT * FROM tb_comentario;


CREATE TABLE tb_seguidor(
    id_usuario_seguidor INT NOT NULL,
    id_seguindo         INT NOT NULL

    PRIMARY KEY(id_seguindo, id_usuario_seguidor),
    FOREIGN KEY(id_usuario_seguidor) REFERENCES tb_usuario(id),
    FOREIGN KEY(id_seguindo) REFERENCES tb_usuario(id)
    );
SELECT * FROM tb_seguidor;

GO