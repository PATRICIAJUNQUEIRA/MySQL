show databases;
use exercicio_2;

CREATE TABLE Marca(
	Id int(45) PRIMARY KEY AUTO_INCREMENT,
	Nome varchar(200) NOT NULL
);

INSERT INTO Marca values(0, "Audi");
INSERT INTO Marca VALUES(0, "Jeep");
INSERT INTO Marca VALUES(0, "Mercedes");
INSERT INTO Marca VALUES(0, "Jaguar");
INSERT INTO Marca VALUES(0, "Volvo");
INSERT INTO Marca VALUES(0, "Alfa");
INSERT INTO Marca VALUES(0, "Fiat");
INSERT INTO Marca VALUES(0, "Cadillac");
INSERT INTO Marca VALUES(0, "Toyota");
INSERT INTO Marca VALUES(0, "Mitsubishi");

SELECT * FROM Marca;
#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#

CREATE TABLE Pacote(
ID int(45) PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(200)	
);

INSERT INTO Pacote values(0, "Basic");
INSERT INTO Pacote values(0, "Confort");

SELECT * FROM Pacote;

#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#

CREATE TABLE Modelo(
ID int(45) PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(200),
ANO INT(45),
FK_ID_Marca INT,
FK_ID_Pacote INT ,
FOREIGN KEY(FK_ID_Marca)REFERENCES Marca(ID),
FOREIGN KEY(FK_ID_Pacote)REFERENCES Pacote(ID)
);


INSERT INTO Modelo VALUES(0, "TT", 2022, 1, 1);
INSERT INTO Modelo VALUES(0, "Compass", 2020, 2, 1);
INSERT INTO Modelo VALUES(0, "GLC300", 2022, 3, 1);   
INSERT INTO Modelo VALUES(0, "Jaguar F-Pace", 1960, 4, 1);
INSERT INTO Modelo VALUES(0, "C40", 2000, 5, 2);
INSERT INTO Modelo VALUES(0, "Alfa Romeo 2300", 1940, 6, 2);
INSERT INTO Modelo VALUES(0, "Uno", 2021, 7, 2);
INSERT INTO Modelo VALUES(0, "CTS", 1990, 8, 2);
INSERT INTO Modelo VALUES(0, "Corolla", 2020, 9, 2);
INSERT INTO Modelo VALUES(0, "ASX", 2021, 10, 2);

select * from Modelo;
DROP TABLE Modelo;
#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#
CREATE TABLE Fornecedores(
ID int(45) PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(200),
CPF VARCHAR(45),
CNH VARCHAR(45),
email VARCHAR(200)
);

INSERT INTO Fornecedores values(0, "Rei do Volante", 2548963225, "55246899521", "agueda4916@uorak.com");
INSERT INTO Fornecedores values(0, "Tapetes_Camp", 54899965233, 54468522698, "andersonmendes@uorak.com");
INSERT INTO Fornecedores values(0, "Cinto para carros", 88856941226, 11232256211, "ricardogarcia@gmail.com");
INSERT INTO Fornecedores values(0, "Rei do Som", 54442336598, 88745566952, "pedromendes@gmail.com");        
INSERT INTO Fornecedores values(0, "FM_Camp", 87456663215, 55633322000, "brunomendes@gmail.com");                   
INSERT INTO Fornecedores values(0, "Meglass", 54125698885, 55541122000, "zeroberto@gmail.com");
INSERT INTO Fornecedores values(0, "CM_Car", 87541222632, 88874599625, "diegomazz@gmail.com");
INSERT INTO Fornecedores values(0, "Alarmes_Camps", 54236698523, 77451100000, "davipaschoal@gmail.com");
INSERT INTO Fornecedores values(0, "Yuebiz GPS", 74445269825, 99632369666, "yebiztakamura@gmail.com");
INSERT INTO Fornecedores values(0, "Airbags Takata", 74522256999, 77741141445, "takatasantos@gmail.com");

select * from fornecedores;
drop table fornecedores;
#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#
CREATE TABLE Componentes(
ID int(45) PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(200),
FK_ID_Fornecedores INT,
FOREIGN KEY(FK_ID_Fornecedores)REFERENCES Fornecedores(ID)
);

INSERT INTO Componentes values(0, "Volante", 1);
INSERT INTO Componentes values(0, "Tapete", 2);
INSERT INTO Componentes values(0, "Cinto de Segurança", 3);
INSERT INTO Componentes values(0, "MP3", 4);
INSERT INTO Componentes values(0, "Farol de milha", 5);
INSERT INTO Componentes values(0, "Vidro Elétrico", 6);
INSERT INTO Componentes values(0, "central multimidia", 7);             
INSERT INTO Componentes values(0, "Alarme Automático", 8);
INSERT INTO Componentes values(0, "GPS no painel", 9);
INSERT INTO Componentes values(0, "Airbag", 10);

select * from Componentes;
#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#

CREATE TABLE Componentes_Carro_Base(
FK_ID_Modelo INT,
FK_ID_Componentes INT,
FK_ID_Sub_Componentes INT,
FOREIGN KEY(FK_ID_modelo)REFERENCES modelo(ID),
FOREIGN KEY(FK_ID_Componentes)REFERENCES Componentes(ID),
FOREIGN KEY(FK_ID_Sub_Componentes)REFERENCES Sub_componentes(ID)
);
DROP TABLE Componentes_Carro_Base;

INSERT INTO Componentes_Carro_Base values(1, 1, 1);
INSERT INTO Componentes_Carro_Base values(2, 2, 2);
INSERT INTO Componentes_Carro_Base values(3, 3, 3);
INSERT INTO Componentes_Carro_Base values(4, 4, 4);
INSERT INTO Componentes_Carro_Base values(5, 5, 5);
INSERT INTO Componentes_Carro_Base values(6, 6, 6);
INSERT INTO Componentes_Carro_Base values(7, 7, 7);
INSERT INTO Componentes_Carro_Base values(8, 8, 8);
INSERT INTO Componentes_Carro_Base values(9, 9, 9);
INSERT INTO Componentes_Carro_Base values(10, 10, 10);

select * from componentes_carro_base;
#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#

CREATE TABLE Componentes_Pacotes(
FK_ID_Pacote INT,
FK_ID_Componentes INT,
FK_ID_Sub_Componentes INT,
FOREIGN KEY(FK_ID_Pacote)REFERENCES Pacote(ID),                
FOREIGN KEY(FK_ID_Componentes)REFERENCES Componentes(ID),
FOREIGN KEY(FK_ID_Sub_Componentes)REFERENCES Sub_componentes(ID_sub_componentes)
);

DROP TABLE Componentes_Pacotes;

INSERT INTO Componentes_Pacotes values(1, 1, 1);
INSERT INTO Componentes_Pacotes values(1, 2, 2);
INSERT INTO Componentes_Pacotes values(1, 3, 3);
INSERT INTO Componentes_Pacotes values(1, 4, 4);
INSERT INTO Componentes_Pacotes values(2, 5, 5);
INSERT INTO Componentes_Pacotes values(2, 6, 6);
INSERT INTO Componentes_Pacotes values(2, 7, 7);
INSERT INTO Componentes_Pacotes values(2, 8, 8);
INSERT INTO Componentes_Pacotes values(2, 9, 9);
INSERT INTO Componentes_Pacotes values(2, 10, 10);
#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#

CREATE TABLE Sub_Componentes(
ID_sub_componentes int(45) PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(200),
FK_Componentes INT,
FOREIGN KEY(FK_Componentes)REFERENCES Componentes(ID)
);

INSERT INTO Sub_Componentes values(0, "Espuma, Couro", 1);
INSERT INTO  Sub_Componentes values(0, "Borracha", 2);
INSERT INTO Sub_Componentes values(0, "poliéster, poliamida e para-aramida", 3);
INSERT INTO Sub_Componentes values(0, "Plástico", 4);
INSERT INTO Sub_Componentes values(0, "plástico, aço, alumínio", 5);
INSERT INTO Sub_Componentes values(0, "Vidro", 6);
INSERT INTO Sub_Componentes values(0, "LCD, processador", 7);
INSERT INTO Sub_Componentes values(0, "Plástico e componentes elétricos", 8);
INSERT INTO Sub_Componentes values(0, "LCD, processador, vidro, componentes elétricos", 9);
INSERT INTO Sub_Componentes values(0, "Pano", 10);

select * from sub_componentes;
#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#


# Qual a lista de todos os componentes utilizados para cada um dos pacotes de todos os carros?



# 'componentes', 'pacotes', 'modelo do carro'

select  modelo.nome as "modelo", modelo.fk_id_pacote as "ID_Pacote", componentes_carro_base.fk_id_componentes as "ID_Componentes", componentes.nome as "componentes"
from  modelo
inner join componentes_carro_base
on modelo.ID = componentes_carro_base.FK_ID_modelo
inner join componentes
on componentes_carro_base.fk_id_componentes = componentes.id_componentes;


#=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=##=#=#=#=#

# Para um pacote específico, qual a lista de todos os componentes e sub-componentes cadastrados?

select * from componentes;
select * from sub_componentes;
select * from componentes_pacotes;

# pacote, componentes, sub_componentes

select componentes_pacotes.FK_ID_Pacote, componentes_pacotes.FK_ID_Componentes, componentes.nome as "componentes", componentes_pacotes.FK_ID_Sub_Componentes, sub_componentes.nome as "sub_componentes"
from componentes_pacotes
inner join componentes
on componentes_pacotes.FK_ID_Componentes = componentes.id_componentes
inner join sub_componentes
on componentes_pacotes.FK_ID_Sub_Componentes = sub_componentes.ID_sub_componentes;

select * from componentes_pacotes where FK_ID_Pacote = 2;

