
 select level as nivel
       ,decode(m.id_menu_pai
              ,null
              ,m.descricao,'  |______ '||m.descricao)
   from menu m
  start with m.id_menu_pai is null
connect by prior m.id_menu = m.id_menu_pai
;

/*
-- CRIACAO DE TABELAS
CREATE TABLE menu (
    id_menu NUMBER(11) NOT NULL,
    id_menu_pai NUMBER(11),
    descricao VARCHAR2(100) NOT NULL,
    PRIMARY KEY (id_menu),
    CONSTRAINT FK_id_menu FOREIGN KEY (id_menu_pai)
    REFERENCES menu(id_menu)
);

-- INCLUSAO DE INFORMACOES
insert into menu values (1,null,'Produto');
insert into menu values (2,1,'Pesquisar produto');
insert into menu values (3,1,'Editar produto');
insert into menu values (4,null,'Pessoa');
insert into menu values (5,4,'Pesquisar pessoa');
insert into menu values (6,4,'Editar pessoa');
*/