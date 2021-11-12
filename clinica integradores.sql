create database clinica;


use clinica;


    
create table paciente(idPaciente int primary key not null auto_increment, nomePaciente varchar(20), idadePaciente varchar(20), datanascCliente varchar(30), sexoPaciente int, cpfPaciente varchar(20), rgPaciente varchar(20),
tipoSanguineo varchar(10), estadoClinico varchar(200), medicacaoPaciente varchar(200), nomepaiPaciente varchar (20), nomemaePaciente varchar(30), planoPaciente varchar(30), enderecoPaciente varchar(50), estadocivilPaciente varchar(20));


create table funcionario(idFuncionario int primary key not null auto_increment, nomeFuncionário varchar(50), cpfFuncionario varchar(20), rgFuncionario varchar(20), emailFuncionario varchar(20), crmFuncionario varchar(20),
tiposangueFuncionario varchar(10), carteiraTrabalho varchar(20), enderecoFuncionario varchar(50), estadocivilFuncionario varchar(20));




create table consulta(idConsulta int primary key not null auto_increment,idFuncionario int, idPaciente int, dataConsulta varchar(30), 
horarioConsulta varchar(30), tipoConsulta varchar(30), valorConsulta varchar(30));


create table relatorio(idRelatorio int primary key not null auto_increment, idFuncionario int, idPaciente int, dataConsulta varchar(30), imcPaciente varchar(50), atestadoPaciente varchar(255),
prontuarioConsulta varchar(255)) ;

create table login(idLogin int  primary key not null auto_increment, usuarioLogin varchar(255));

alter table consulta add constraint fk_idPaciente foreign key (idPaciente) references paciente (idPaciente);
alter table consulta add constraint fk_idFuncionario foreign key (idFuncionario) references funcionario (idFuncionario);
alter table relatorio add constraint fk_idPaciente2 foreign key (idPaciente) references paciente (idPaciente);
alter table relatorio add constraint fk_idFuncionario2 foreign key (idFuncionario) references funcionario (idFuncionario);

