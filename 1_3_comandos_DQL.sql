
-- ITEM A)
SELECT c.cd_categoria, c.ds_categoria, p.cd_produto, p.ds_produto, p.vl_unitario, p.vl_perc_lucro
FROM mc_categoria_prod c
LEFT JOIN mc_produto p ON c.cd_categoria = p.cd_categoria
ORDER BY c.ds_categoria ASC, p.ds_produto ASC;

 
-- ITEM B)
SELECT c.nr_cliente, c.nm_cliente, c.ds_email, c.nr_telefone, c.nm_login, cf.dt_nascimento, 
TO_CHAR(cf.dt_nascimento, 'DAY') as dia_da_semana, 
TRUNC(MONTHS_BETWEEN(SYSDATE, cf.dt_nascimento) / 12) as idade, fl_sexo_biologico, nr_cpf
FROM mc_cliente c
RIGHT JOIN mc_cli_fisica cf ON c.nr_cliente = cf.nr_cliente;

-- ITEM C)
SELECT * FROM mc_sgv_visualizacao_video vv 
INNER JOIN mc_sgv_produto_video pv ON vv.nr_sequencia = pv.nr_sequencia
INNER JOIN mc_produto p ON p.cd_produto = pv.cd_produto
ORDER BY vv.dt_visualizacao ASC,  nr_hora_visualizacao ASC;
























