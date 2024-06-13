CREATE TABLE prestador 
(
idprestador varchar(4) not null,
nome varchar(20) not null,
cpf varchar(15) not null,
tipo_de_serviço varchar(30) not null,
carga_horaria varchar(20) not null,
primary key (idprestador)
);

CREATE TABLE cliente
(
idcliente varchar(4) not null,
nome varchar(20) not null,
cpf varchar(15) not null, 
telefone varchar(12) not null,  
endereco varchar(30) not null,
solicitacao_de_servico varchar(100) not null,
primary key (idcliente)
);

CREATE TABLE servicos_disponiveis
(
iddisponivel varchar(8) not null,
tipo_do_servico varchar(20) not null,
tipo_do_trabalho varchar(20) not null,
materiais_disponiveis varchar(50) not null,
tipo_de_servico varchar(20) not null,
valor varchar(9) not null,
primary key (iddisponivel)
);

CREATE TABLE servicos_em_andamento
(
idexecucao varchar(8) not null,
tipo_do_servico varchar(30) not null,
localizacao varchar(30) not null,
materiais_utilizados varchar(50) not null,
prestador_destinado varchar(20) not null,
valor_mao_de_obra varchar(30) not null,
primary key (idexecucao)
);

CREATE TABLE estoque 
(
idestoque varchar(4),
material_em_estoque varchar(30) not null,
quantidade_materiais varchar(30) not null,
valor_gasto varchar(9) not null,
primary key (idestoque)
);

ALTER TABLE cliente MODIFY endereco VARCHAR(100);
ALTER TABLE cliente DROP COLUMN solicitacao_de_servico;
ALTER TABLE prestador CHANGE tipo_de_serviço tipo_de_servico VARCHAR(30);
DROP TABLE solicitar_servico;

CREATE TABLE solicitar_servico
(
idsolicitacao varchar(4) not null,
tipo_de_servico varchar(30) not null,
descricao_do_servico varchar(100) not null,
localizacao varchar(40) not null,
valor_mao_de_obra varchar(14) not null,
valor_materiais varchar(14) not null,
primary key (idsolicitacao)
);

ALTER TABLE solicitar_servico ADD COLUMN valor_total varchar(14);
ALTER TABLE solicitar_servico
ADD PRIMARY KEY (idsolicitacao);
ALTER TABLE solicitar_servico CHANGE tipo_de_servico tipo_de_trabalho VARCHAR(30);
