 


-- ITEM A) Popula��o tabela departamento
INSERT INTO mc_depto (cd_depto, nm_depto, st_depto) 
    VALUES (1,'FINANCEIRO','I');
INSERT INTO mc_depto (cd_depto, nm_depto, st_depto) 
    VALUES (2,'CONTABILIDADE','A');
INSERT INTO mc_depto (cd_depto, nm_depto, st_depto) 
    VALUES (3,'JURIDICO','A'); 


-- ITEM B) Popula��o tabela funcion�rios
INSERT INTO mc_funcionario (cd_funcionario, cd_depto,nm_funcionario, dt_nascimento, ds_cargo, vl_salario, st_func) 
    VALUES (1, 2,'Matheus', TO_DATE('2001-01-20','yyyy-mm-dd'), 'Analista PL', 4800.75, 'I');
INSERT INTO mc_funcionario (cd_funcionario, cd_depto,nm_funcionario, dt_nascimento, ds_cargo, vl_salario, st_func) 
    VALUES (2, 2,'Bruno', TO_DATE('1994-04-20','yyyy-mm-dd'), 'Supervisor(a) da Contabilidade', 9.300, 'A');
INSERT INTO mc_funcionario (cd_funcionario, cd_depto,nm_funcionario, dt_nascimento, ds_cargo, vl_salario, st_func) 
    VALUES (3,3,'Arthur', TO_DATE('2003-09-17','yyyy-mm-dd'), 'Estagi�rio(a)', 2500.00, 'I');
INSERT INTO mc_funcionario (cd_funcionario, cd_depto,nm_funcionario, dt_nascimento, ds_cargo, vl_salario, st_func) 
    VALUES (4, 3,'Julio', TO_DATE('2002-09-08','yyyy-mm-dd'), 'Advogado PL', 6578.00, 'A');
INSERT INTO mc_funcionario (cd_funcionario, cd_depto,nm_funcionario, dt_nascimento, ds_cargo, vl_salario, st_func) 
    VALUES (5, 3,'Luiggi', TO_DATE('1997-10-21','yyyy-mm-dd'), 'Advogado J�nior', 3790.25, 'A');
INSERT INTO mc_funcionario (cd_funcionario, cd_depto,nm_funcionario, dt_nascimento, ds_cargo, vl_salario, st_func) 
    VALUES (6, 3,'Joana', TO_DATE('2004-02-26','yyyy-mm-dd'), 'Estagi�rio(a)', 2500, 'I');
    
    
    -- ITEM C) Popula��o tabela estado
INSERT INTO mc_estado (sg_estado, nm_estado) 
    VALUES ('ES','ESPIRITO SANTO');
INSERT INTO mc_estado (sg_estado, nm_estado) 
    VALUES ('SP', 'SAO PAULO');
INSERT INTO mc_cidade (cd_cidade, sg_estado, nm_cidade) 
    VALUES (1,'ES','ARACRUZ');
INSERT INTO mc_cidade (cd_cidade, sg_estado, nm_cidade) 
    VALUES (2,'ES','VITORIA');
INSERT INTO mc_cidade (cd_cidade, sg_estado, nm_cidade) 
    VALUES (3,'SP','CAMPINAS');
INSERT INTO mc_cidade (cd_cidade, sg_estado, nm_cidade) 
    VALUES (4,'SP','SAO PAULO');
INSERT INTO mc_bairro (cd_bairro, cd_cidade, nm_bairro) 
    VALUES (1,1,'MAR AZUL');
INSERT INTO mc_bairro (cd_bairro, cd_cidade, nm_bairro) 
    VALUES (2,1,'MOSCOSO');
INSERT INTO mc_bairro (cd_bairro, cd_cidade, nm_bairro) 
    VALUES (3,2,'CAMBUI');
INSERT INTO mc_bairro (cd_bairro, cd_cidade, nm_bairro) 
    VALUES (4,2,'VILA MARIANA');
INSERT INTO mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro) 
    VALUES (1,1,'RUA ACRE');
INSERT INTO mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro) 
    VALUES (2,1,'RUA ALAGOAS');
INSERT INTO mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro) 
    VALUES (3,2,'RUA ANTENOR GUIMARAES');
INSERT INTO mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro) 
    VALUES (4,2,'AVENIDA CLETO NUNES');
INSERT INTO mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro) 
    VALUES (5,3,'RUA MARIA MONTEIRO');
INSERT INTO mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro) 
    VALUES (6,3,'RUA BARRETO LEME');
INSERT INTO mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro) 
    VALUES (7,4,'RUA FRAN�A PINTO');
INSERT INTO mc_logradouro (cd_logradouro, cd_bairro, nm_logradouro) 
    VALUES (8,4,'AVENIDA VERGUEIRO');

-- ITEM D)  popula��o endere�o funcion�rio
INSERT INTO mc_end_func (cd_funcionario, cd_logradouro, nr_end, dt_inicio, st_end) 
    VALUES (1, 1, 756, SYSDATE, 'A');
INSERT INTO mc_end_func (cd_funcionario, cd_logradouro, nr_end, dt_inicio, st_end) 
    VALUES (2, 4, 921, SYSDATE, 'A');




-- Inser��o de clientes
INSERT INTO mc_cliente (nr_cliente , nm_cliente, nm_login, ds_senha) VALUES (1, 'Alice', 'alice123@outlook.com', 'P@ssw0rd123');
INSERT INTO mc_cliente (nr_cliente , nm_cliente, nm_login, ds_senha) VALUES (2, 'Bob', 'bob456@gmail.com', 'LetMeIn2022!');
INSERT INTO mc_cliente (nr_cliente , nm_cliente, nm_login, ds_senha) VALUES (3, 'SPTrans', 'contato@sptrans.com.br', '6eOnibus');


-- ITEM E) Popula��o da tabela cliente f�sica
INSERT INTO mc_cli_fisica (nr_cliente, dt_nascimento, fl_sexo_biologico, nr_cpf) 
    VALUES (1,TO_DATE('1995-04-13','yyyy-mm-dd'), 'F', '479.525.516-61');
INSERT INTO mc_cli_fisica (nr_cliente, dt_nascimento, fl_sexo_biologico, nr_cpf) 
    VALUES (2,TO_DATE('1987-06-15','yyyy-mm-dd'), 'M', '805.229.867-20');
INSERT INTO mc_cli_juridica (nr_cliente) 
    VALUES (3);
INSERT INTO mc_end_cli (nr_cliente, cd_logradouro_cli, nr_end) 
    VALUES (1,4,255); 
INSERT INTO mc_end_cli (nr_cliente, cd_logradouro_cli, nr_end) 
    VALUES (2,6,78);
INSERT INTO mc_end_cli (nr_cliente, cd_logradouro_cli, nr_end) 
    VALUES (3,2,99);  


-- ITEM F) Causa erro de inser��o de cliente que j� existe registro.
INSERT INTO mc_cliente (nr_cliente , nm_cliente, nm_login, ds_senha) VALUES (4, 'Bob', 'bob456@gmail.com', 'Senha123!');



-- ITEM G) Popula��o na tabela de categoria
INSERT INTO mc_categoria_prod (cd_categoria, tp_categoria, ds_categoria, st_categoria) 
    VALUES (1,'P','ELETRONICO','A');
INSERT INTO mc_categoria_prod (cd_categoria, tp_categoria, ds_categoria, st_categoria) 
    VALUES (2,'P','ESPORTE E LAZER','A');
INSERT INTO mc_categoria_prod (cd_categoria, tp_categoria, ds_categoria, st_categoria) 
    VALUES (4,'P','PET SHOP','A');


-- ITEM H) Popula��o tabela produto
INSERT INTO mc_produto (cd_produto, cd_categoria, ds_produto, vl_unitario, ds_completa_prod) 
    VALUES (1,1,'FONE',90.00,'UM FONE DE OUVIDO E UM DISPOSITIVO ELETRONICO QUE TRANSMITE AUDIO DIRETAMENTE AOS OUVIDOS DO USUARIO PODE SER CONECTADO A DISPOSITIVOS DE AUDIO POR FIO OU SEM FIO COMO SMARTPHONES E COMPUTADORES UTILIZADO PARA OUVIR MUSICA FAZER CHAMADAS JOGAR E OUTRAS ATIVIDADES DE AUDIO OFERECE UMA EXPERIENCIA SONORA PESSOAL E IMERSIVA DISPONIVEL EM DIVERSOS ESTILOS E DESIGNS CADA UM COM CARACTERISTICAS ESPECIFICAS DE CONFORTO E QUALIDADE DE SOM'); 
INSERT INTO mc_produto (cd_produto, cd_categoria, ds_produto, vl_unitario, ds_completa_prod) 
    VALUES (2,2,'BOLA',165.75,'A bola de futebol � o equipamento essencial usado no esporte do futebol. Feita de materiais como couro, poliuretano ou PVC, � esf�rica e infl�vel, com uma circunfer�ncia padr�o de cerca de 68-70 cm e peso de 410-450 gramas. Projetada para resistir ao jogo intenso e proporcionar uma trajet�ria control�vel, possui v�rias camadas, incluindo uma cobertura externa, revestimento e c�mara de ar interna. Dispon�vel em diferentes designs e cores, � fundamental para o jogo de futebol');
INSERT INTO mc_produto (cd_produto, cd_categoria, ds_produto, vl_unitario, ds_completa_prod) 
    VALUES (3,2,'PEBOLIM',743.85,'O pebolim � um jogo de mesa inspirado no futebol, jogado por duas pessoas ou em equipes de dois. Os jogadores controlam pequenas figuras em barras rotativas para chutar a bola e marcar gols no gol advers�rio. As mesas de pebolim t�m um campo de jogo retangular com jogadores fixados em barras que atravessam a mesa. O objetivo � usar habilidade e estrat�gia para vencer o oponente ao marcar mais gols. O jogo � popular em bares, sal�es de jogos e espa�os de entretenimento');
INSERT INTO mc_produto (cd_produto, cd_categoria, ds_produto, vl_unitario, ds_completa_prod) 
    VALUES (4,4,'RACAO DE GATO 1KG',42.00,'A ra��o de gato de 1kg � um alimento seco formulado especificamente para atender �s necessidades nutricionais dos gatos. Geralmente, � embalada em sacos pl�sticos ou recipientes herm�ticos para manter a frescura e a qualidade do alimento. Esta quantidade de ra��o pode durar um gato por um per�odo vari�vel, dependendo do tamanho, idade e n�vel de atividade do animal. A ra��o � formulada com ingredientes balanceados para fornecer os nutrientes essenciais, como prote�nas, vitaminas, minerais e �gua');
INSERT INTO mc_produto (cd_produto, cd_categoria, ds_produto, vl_unitario, ds_completa_prod) 
    VALUES (5,1,'PENDRIVE',18.99,'Um pen drive � um dispositivo port�til de armazenamento usado para transferir e armazenar dados digitalmente. Ele � compacto, possui conectores USB para conex�o a uma variedade de dispositivos e oferece capacidades de armazenamento que variam de alguns gigabytes a v�rias centenas de gigabytes. Pen drives s�o amplamente utilizados para transportar arquivos digitais entre dispositivos de forma r�pida e conveniente, sendo uma op��o flex�vel para armazenamento tempor�rio ou permanente de dados');



-- ITEM I) Categorias v�deos 
INSERT INTO mc_categoria_prod (cd_categoria, tp_categoria, ds_categoria, st_categoria) 
    VALUES (5, 'V', 'USO DO COTIDIANO', 'A');
INSERT INTO mc_categoria_prod (cd_categoria, tp_categoria, ds_categoria, st_categoria) 
    VALUES (6, 'V', 'INSTALACAO DO PRODUTO', 'A'); 



-- ITEM J)  Popula��o tabela v�deo
INSERT INTO mc_sgv_produto_video (cd_produto, nr_sequencia, cd_categoria) 
    VALUES (5, 58, 5);
INSERT INTO mc_sgv_produto_video (cd_produto, nr_sequencia, cd_categoria) 
    VALUES (5, 222,6);

--ITEM K) 
INSERT INTO mc_sgv_visualizacao_video (cd_visualizacao_video, nr_cliente, cd_produto, nr_sequencia, dt_visualizacao, nr_hora_visualizacao) VALUES (1576, 2, 5, 58, TO_DATE('2024-01-27','yyyy-mm-dd'), 17.36);
INSERT INTO mc_sgv_visualizacao_video (cd_visualizacao_video, nr_cliente, cd_produto, nr_sequencia, dt_visualizacao, nr_hora_visualizacao) VALUES (3001, 1, 5, 222, TO_DATE('2024-01-27','YYYY-MM-DD'), 12.33);


COMMIT;


-- ITEM M) Aumento de sal�rio em 12%
UPDATE mc_funcionario
SET
ds_cargo = 'Analista J�nior',
vl_salario = vl_salario * 1.12, 
st_func = 'A'
WHERE cd_funcionario = 3;
-- ITEM N) Mudan�a de nome no departamento
UPDATE mc_depto 
SET
nm_depto = 'Compliance'
WHERE cd_depto = 3;
 
-- ITEM O) Mudan�a de data de nascimento do cliente
UPDATE mc_cli_fisica
SET
dt_nascimento = TO_DATE('2002 - 05 - 18','yyyy - mm - dd')
WHERE nr_cliente = 1;
 
-- ITEM P) Desligamento de funcion�rio e atualiza��o do seus status
UPDATE mc_funcionario
SET
st_func = 'I',
dt_desligamento = TRUNC(SYSDATE)
WHERE cd_funcionario = 5;
 
-- ITEM Q) transformando a endere�o em inativo
UPDATE mc_end_cli
SET
st_end = 'I',  
dt_termino = TO_DATE('2024-04-16','yyyy-mm-dd')
WHERE nr_cliente = 2;

-- ITEM R) Gerar erro com a dele��o de um estado que possui chaves estrangeiras relacionadas       
DELETE FROM mc_estado
WHERE  sg_estado = 'SP';
 
-- ITEM S) tentativa de mudan�a de status para 'X'
UPDATE mc_produto
SET
st_produto = 'X'
WHERE cd_produto = 1;


COMMIT;











