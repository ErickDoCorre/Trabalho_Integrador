create database clinica;

use clinica;

create table paciente(idPaciente int not null auto_increment, nomePaciente varchar(50), sexoPaciente int, emergenciaPaciente varchar(20), enderecoPaciente varchar(20),
    cpfCliente varchar (20), rgPaciente varchar(50), planoPaciente varchar(30), datanascPaciente varchar(20), estadoclinPaciente varchar(30), tiposangPaciente varchar (10),
    remedPaciente varchar(20), responsaPaciente varchar(30), civilPaciente varchar (20));

create table funcionario(idFuncionario int not null auto_increment, nomeFuncionario varchar (30), sexoFuncionario varchar(30), cpfFuncionario varchar(20), crmFuncionario varchar (30),
emailFuncionario varchar(50), carteiraTrabalho varchar (30), tiposangFuncionario varchar(30), enderecoFuncionario varchar(30), civilFuncionario varchar (20), rgFuncionario varchar (30));


create table consulta(idConsulta int not null auto_increment, nomeCliente varchar (20), nomeFuncionario varchar(30), dataConsulta varchar(30), horaConsulta varchar(30), tipoConsulta varchar(20),
valorConsulta varchar (30));

create table relatorio(idRelatorio int not null auto_increment, medicamentoCliente varchar (20), nomeMedico varchar(20), receitaCliente varchar (255), prontuarioConsulta varchar(255), 
imcCliente varchar (20), dataConsulta varchar (20), atestadoCliente varchar(60));


