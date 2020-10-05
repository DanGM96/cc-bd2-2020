/* CREATE AREA */


/* ENDERECO */
create table endereco (
    id_endereco int(5) auto_increment not null,
    pais VARCHAR(50) not null,
    estado VARCHAR(50) not null,
    estado_abrev VARCHAR(50) not null,
    cidade VARCHAR(50) not null,
    codigo_postal VARCHAR(50) not null,
    residencia_tipo VARCHAR(50) not null,
    rua VARCHAR(50) not null,
    numero VARCHAR(50) not null,
    fuso_horario VARCHAR(50) not null,
    primary key(id_endereco)
);

/* FUNCIONARIO */
create table funcionario (
    id_funcionario int(5) auto_increment not null,
    nome VARCHAR(50) not null,
    sobrenome VARCHAR(50) not null,
    cargo VARCHAR(50) not null,
    nascimento DATE not null,
    genero VARCHAR(50) not null,
    telefone VARCHAR(50) not null,
    email VARCHAR(50) not null,
    salario VARCHAR(50) not null,
    id_endereco int(5) not null,
    primary key(id_funcionario),
    constraint fk_endereco_funcionario foreign key(id_endereco) references endereco(id_endereco)
);

/* CLIENTE */
create table cliente (
    id_cliente int(5) auto_increment not null,
    titulo VARCHAR(50) not null,
    nome VARCHAR(50) not null,
    sobrenome VARCHAR(50) not null,
    nascimento DATE not null,
    genero VARCHAR(50) not null,
    cartaoBandeira VARCHAR(50) not null,
    cartaoNumero VARCHAR(50) not null,
    email VARCHAR(50) not null,
    telefone VARCHAR(50) not null,
    id_endereco int(5) not null,
    primary key(id_cliente),
    constraint fk_endereco_cliente foreign key(id_endereco) references endereco(id_endereco)
);

/* PRODUTO */
create table produto (
    id_produto int(5) auto_increment not null,
    primary key(id_produto)
);

/* LIVRO */
create table livro (
    id_livro int(5) auto_increment not null,
    nome VARCHAR(100) not null,
    genero VARCHAR(50) not null,
    editora VARCHAR(50) not null,
    autor VARCHAR(50) not null,
    data_lancamento DATE not null,
    preco VARCHAR(50) not null,
    porcentagem_lucro int(3) not null,
    descricao TEXT not null,
    isbn VARCHAR(50) not null,
    id_produto int(5) not null,
    primary key(id_livro),
    constraint fk_produto_livro foreign key(id_produto) references produto(id_produto)
);

/* FILME */
create table filme (
    id_filme int(5) auto_increment not null,
    nome VARCHAR(100) not null,
    genero VARCHAR(50) not null,
    produtora VARCHAR(50) not null,
    diretor VARCHAR(50) not null,
    data_lancamento DATE not null,
    preco VARCHAR(50) not null,
    porcentagem_lucro int(3) not null,
    descricao TEXT not null,
    id_produto int(5) not null,
    primary key(id_filme),
    constraint fk_produto_filme foreign key(id_produto) references produto(id_produto)
);


/* JOGO */
create table jogo (
    id_jogo int(5) auto_increment not null,
    nome VARCHAR(100) not null,
    genero VARCHAR(50) not null,
    estudio VARCHAR(50) not null,
    diretor VARCHAR(50) not null,
    data_lancamento DATE not null,
    preco VARCHAR(50) not null,
    porcentagem_lucro int(3) not null,
    descricao TEXT not null,
    id_produto int(5) not null,
    primary key(id_jogo),
    constraint fk_produto_jogo foreign key(id_produto) references produto(id_produto)
);

/* PEDIDO */
create table pedido (
    id_pedido int(5) auto_increment not null,
    pago VARCHAR(50) not null,
    data DATE not null,    
    id_cliente int(5) not null,
    id_funcionario int(5) not null,
    primary key(id_pedido),
    constraint fk_pedido_cliente foreign key(id_cliente) references cliente(id_cliente),
    constraint fk_pedido_funcionario foreign key(id_funcionario) references funcionario(id_funcionario)
);

/* LISTA_PRODUTOS */
create table lista_produtos (
    qtd int(2) not null,
    desconto int(2) not null,
    id_produto int(5) not null,
    id_pedido int(5) not null,
    constraint fk_lista_produtos_produto foreign key(id_produto) references produto(id_produto),
    constraint fk_lista_produtos_pedido foreign key(id_pedido) references pedido(id_pedido)
);



/* INSERT AREA */



/* ENDERECO */
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Nebraska', 'NE', 'Omaha', '68134', 'Alley', 'Elmside', '5', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Missouri', 'MO', 'Saint Louis', '63167', 'Trail', 'Graedel', '7237', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Minnesota', 'MN', 'Minneapolis', '55446', 'Hill', 'Swallow', '35', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Stockton', '95205', 'Center', 'Montana', '2700', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Brea', '92822', 'Way', 'Sherman', '60063', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Florida', 'FL', 'Fort Lauderdale', '33330', 'Lane', 'Autumn Leaf', '0443', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Missouri', 'MO', 'Kansas City', '64179', 'Lane', 'New Castle', '848', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Minnesota', 'MN', 'Minneapolis', '55436', 'Pass', 'Del Sol', '99208', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Missouri', 'MO', 'Springfield', '65810', 'Point', 'Glacier Hill', '343', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New York', 'NY', 'Rochester', '14619', 'Way', 'Claremont', '39478', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Michigan', 'MI', 'Muskegon', '49444', 'Parkway', 'Gerald', '717', 'America/Detroit');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Florida', 'FL', 'Miami', '33261', 'Court', 'Lyons', '3', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New York', 'NY', 'Brooklyn', '11225', 'Parkway', 'Lindbergh', '827', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Indiana', 'IN', 'Jeffersonville', '47134', 'Parkway', 'Memorial', '52322', 'America/Kentucky/Louisville');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New Mexico', 'NM', 'Santa Fe', '87505', 'Court', 'Miller', '2', 'America/Denver');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Texas', 'TX', 'San Antonio', '78265', 'Alley', 'Valley Edge', '8735', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Pennsylvania', 'PA', 'Pittsburgh', '15225', 'Road', 'Roth', '50', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Los Angeles', '90189', 'Hill', 'Fair Oaks', '49952', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Kentucky', 'KY', 'Louisville', '40215', 'Park', 'Victoria', '814', 'America/Kentucky/Louisville');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Florida', 'FL', 'Clearwater', '34629', 'Hill', 'Debs', '5855', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Los Angeles', '90015', 'Pass', 'Jackson', '39507', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Oklahoma', 'OK', 'Tulsa', '74116', 'Junction', 'Hansons', '0', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Arkansas', 'AR', 'Hot Springs National Park', '71914', 'Hill', 'Merchant', '3', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Nevada', 'NV', 'Reno', '89505', 'Point', 'Hazelcrest', '7', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Louisiana', 'LA', 'New Orleans', '70179', 'Pass', 'Maple', '7394', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Massachusetts', 'MA', 'Newton', '02162', 'Hill', 'Green Ridge', '47445', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Texas', 'TX', 'Dallas', '75246', 'Street', 'Moulton', '92580', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Oklahoma', 'OK', 'Oklahoma City', '73147', 'Parkway', 'Ohio', '70', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Missouri', 'MO', 'Saint Louis', '63126', 'Center', 'Crest Line', '3648', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'North Carolina', 'NC', 'Durham', '27717', 'Center', 'Granby', '7480', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Louisiana', 'LA', 'Shreveport', '71105', 'Center', 'Hoepker', '57665', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Florida', 'FL', 'Hollywood', '33028', 'Way', 'Spohn', '5231', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Texas', 'TX', 'Lubbock', '79405', 'Court', 'Village', '5946', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Utah', 'UT', 'Salt Lake City', '84135', 'Court', 'Brentwood', '79', 'America/Denver');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Texas', 'TX', 'Houston', '77075', 'Hill', 'Tomscot', '8', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Texas', 'TX', 'Houston', '77240', 'Circle', 'Arkansas', '0', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Alabama', 'AL', 'Huntsville', '35805', 'Center', 'Clemons', '73252', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Virginia', 'VA', 'Richmond', '23208', 'Crossing', 'Eagle Crest', '09798', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Louisiana', 'LA', 'Baton Rouge', '70883', 'Alley', 'Spohn', '29', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Utah', 'UT', 'Salt Lake City', '84170', 'Lane', 'Stone Corner', '9', 'America/Denver');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Connecticut', 'CT', 'Stamford', '06905', 'Place', 'Clemons', '9', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Oregon', 'OR', 'Eugene', '97405', 'Drive', 'Grayhawk', '56139', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Michigan', 'MI', 'Lansing', '48912', 'Point', 'Parkside', '22527', 'America/Detroit');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Maryland', 'MD', 'Silver Spring', '20918', 'Hill', 'Johnson', '6705', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Colorado', 'CO', 'Colorado Springs', '80945', 'Crossing', 'Cody', '237', 'America/Denver');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Louisiana', 'LA', 'Baton Rouge', '70826', 'Avenue', 'Grayhawk', '9025', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Mississippi', 'MS', 'Jackson', '39282', 'Plaza', 'Oriole', '92534', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Long Beach', '90840', 'Junction', 'Brickson Park', '62', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Minnesota', 'MN', 'Minneapolis', '55458', 'Hill', 'Talisman', '5', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Fresno', '93721', 'Hill', 'Judy', '020', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Kentucky', 'KY', 'Louisville', '40250', 'Point', 'Dunning', '6', 'America/Kentucky/Louisville');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Tennessee', 'TN', 'Nashville', '37235', 'Center', 'Kedzie', '6', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Alabama', 'AL', 'Birmingham', '35236', 'Plaza', 'Golden Leaf', '22', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Pennsylvania', 'PA', 'Pittsburgh', '15274', 'Crossing', 'Granby', '69585', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Alabama', 'AL', 'Mobile', '36605', 'Point', 'Thompson', '4281', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New York', 'NY', 'Brooklyn', '11220', 'Drive', 'Hauk', '930', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Texas', 'TX', 'Fort Worth', '76121', 'Place', 'Vermont', '9', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'South Carolina', 'SC', 'Columbia', '29215', 'Circle', 'Continental', '70917', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Florida', 'FL', 'Fort Myers', '33994', 'Avenue', 'Carioca', '78196', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Virginia', 'VA', 'Richmond', '23260', 'Point', 'Mccormick', '1', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Modesto', '95354', 'Drive', 'Northport', '10', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Ohio', 'OH', 'Columbus', '43210', 'Point', 'Sage', '76', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Georgia', 'GA', 'Macon', '31205', 'Center', 'Mesta', '92640', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Louisiana', 'LA', 'Baton Rouge', '70826', 'Way', 'Hooker', '23140', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Illinois', 'IL', 'Chicago', '60652', 'Place', 'Division', '41213', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Texas', 'TX', 'El Paso', '88563', 'Trail', 'Lawn', '2331', 'America/Denver');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New York', 'NY', 'Buffalo', '14210', 'Hill', 'Loomis', '439', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Kentucky', 'KY', 'Lexington', '40505', 'Road', 'Aberg', '50', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Alabama', 'AL', 'Montgomery', '36114', 'Crossing', 'South', '6571', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Nevada', 'NV', 'Las Vegas', '89105', 'Way', 'Barnett', '9', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'San Jose', '95128', 'Point', 'Butterfield', '29058', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New York', 'NY', 'Hicksville', '11854', 'Park', 'Wayridge', '76342', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Washington', 'WA', 'Spokane', '99205', 'Park', 'Knutson', '155', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New York', 'NY', 'Rochester', '14609', 'Circle', 'Clove', '13024', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Michigan', 'MI', 'Grand Rapids', '49518', 'Pass', 'Corry', '7627', 'America/Detroit');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Georgia', 'GA', 'Norcross', '30092', 'Drive', 'Farmco', '9', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Oklahoma', 'OK', 'Oklahoma City', '73124', 'Lane', 'Old Shore', '2118', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New York', 'NY', 'Jamaica', '11447', 'Center', 'Elka', '31137', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Georgia', 'GA', 'Athens', '30605', 'Street', 'Macpherson', '14', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Long Beach', '90840', 'Parkway', 'Arizona', '695', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Connecticut', 'CT', 'New Haven', '06505', 'Road', 'David', '5416', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Santa Barbara', '93111', 'Terrace', 'Rowland', '8', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Iowa', 'IA', 'Waterloo', '50706', 'Lane', 'Heath', '7', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Alabama', 'AL', 'Mobile', '36605', 'Trail', 'Mccormick', '1925', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Connecticut', 'CT', 'Hartford', '06140', 'Plaza', 'Armistice', '4', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Kansas', 'KS', 'Topeka', '66617', 'Junction', 'Moland', '1379', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Alabama', 'AL', 'Birmingham', '35231', 'Street', 'Delaware', '735', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Texas', 'TX', 'Houston', '77271', 'Way', 'Maywood', '58', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Maryland', 'MD', 'Baltimore', '21239', 'Parkway', 'Summerview', '24419', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Indiana', 'IN', 'Evansville', '47737', 'Crossing', 'Eliot', '04', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'New Jersey', 'NJ', 'Paterson', '07544', 'Pass', 'Veith', '2', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Alaska', 'AK', 'Anchorage', '99512', 'Drive', 'Gina', '017', 'America/Anchorage');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'San Francisco', '94105', 'Street', 'Pine View', '306', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Kansas', 'KS', 'Kansas City', '66112', 'Circle', 'Bowman', '007', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'San Jose', '95118', 'Pass', 'Kenwood', '6062', 'America/Los_Angeles');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'West Virginia', 'WV', 'Huntington', '25770', 'Court', 'Coolidge', '39507', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Missouri', 'MO', 'Independence', '64054', 'Circle', 'Hallows', '77986', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Virginia', 'VA', 'Norfolk', '23551', 'Center', 'Talmadge', '4', 'America/New_York');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'Illinois', 'IL', 'Springfield', '62776', 'Park', 'Florence', '40', 'America/Chicago');
insert into endereco (pais, estado, estado_abrev, cidade, codigo_postal, residencia_tipo, rua, numero, fuso_horario) values ('United States', 'California', 'CA', 'Fullerton', '92640', 'Crossing', 'Quincy', '145', 'America/Los_Angeles');



/* FUNCIONARIO */
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Nevil', 'Francecione', 'Financial Analyst', '1965-03-18', 'Male', '62(354)589-8731', 'nfrancecione0@umich.edu', '$2943.87', 1);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Pieter', 'Riseborough', 'Financial Analyst', '2000-01-25', 'Male', '63(859)202-7020', 'priseborough1@nsw.gov.au', '$1925.87', 2);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Charlean', 'Traice', 'VP Product Management', '1993-05-15', 'Female', '48(790)366-5020', 'ctraice2@narod.ru', '$2768.50', 3);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Jeno', 'McKinty', 'Research Assistant II', '1978-01-18', 'Male', '84(864)927-8307', 'jmckinty3@live.com', '$1269.90', 4);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Lucius', 'Ianelli', 'Internal Auditor', '1941-09-24', 'Male', '46(871)887-8508', 'lianelli4@addtoany.com', '$1339.56', 5);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Agretha', 'Mars', 'General Manager', '2001-12-01', 'Female', '7(380)888-5080', 'amars5@sakura.ne.jp', '$1488.32', 6);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Lani', 'Haggidon', 'Librarian', '1946-06-01', 'Female', '46(657)703-2259', 'lhaggidon6@digg.com', '$1503.78', 7);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Sarine', 'Cammiemile', 'Help Desk Technician', '1971-06-06', 'Female', '84(930)634-1225', 'scammiemile7@xrea.com', '$2565.25', 8);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Westleigh', 'Avey', 'Junior Executive', '1948-04-11', 'Male', '86(352)155-1947', 'wavey8@networksolutions.com', '$2626.66', 9);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Daisi', 'Lindeboom', 'Help Desk Operator', '1946-10-02', 'Female', '63(310)344-1242', 'dlindeboom9@domainmarket.com', '$2330.02', 10);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Berkie', 'Harvison', 'Engineer IV', '1988-03-25', 'Male', '237(714)330-2228', 'bharvisona@symantec.com', '$1636.31', 11);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Casar', 'McCowan', 'General Manager', '1969-01-28', 'Male', '54(786)685-4742', 'cmccowanb@github.io', '$2190.91', 12);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Happy', 'Sutterfield', 'Actuary', '1963-07-18', 'Female', '62(486)600-3269', 'hsutterfieldc@yahoo.co.jp', '$2498.55', 13);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Worthy', 'Binford', 'General Manager', '1980-03-27', 'Male', '48(762)383-8731', 'wbinfordd@e-recht24.de', '$2924.81', 14);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Shelley', 'Speers', 'Design Engineer', '1995-02-02', 'Male', '86(155)395-0406', 'sspeerse@is.gd', '$1873.70', 15);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Arabella', 'Kalderon', 'Human Resources Manager', '1958-07-26', 'Female', '55(854)201-9009', 'akalderonf@google.pl', '$2950.40', 16);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Chickie', 'Fergusson', 'Paralegal', '2001-10-24', 'Male', '212(440)736-4335', 'cfergussong@buzzfeed.com', '$1391.82', 17);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Rey', 'Spennock', 'Executive Secretary', '1977-05-21', 'Female', '63(465)779-6126', 'rspennockh@mayoclinic.com', '$1965.53', 18);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Elston', 'Stigers', 'Physical Therapy Assistant', '1980-07-31', 'Male', '33(521)780-9839', 'estigersi@netscape.com', '$1382.16', 19);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Errick', 'Renachowski', 'Help Desk Technician', '1942-06-24', 'Male', '86(174)959-3182', 'erenachowskij@creativecommons.org', '$1832.11', 20);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Mychal', 'Gaffey', 'Dental Hygienist', '1943-08-14', 'Male', '55(677)949-4182', 'mgaffeyk@bravesites.com', '$2071.85', 21);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Ynes', 'Lauga', 'Actuary', '1967-03-03', 'Female', '351(167)731-9832', 'ylaugal@altervista.org', '$2758.26', 22);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Kit', 'Slipper', 'Recruiting Manager', '1957-06-28', 'Female', '223(559)644-4697', 'kslipperm@msn.com', '$1700.88', 23);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Brigitta', 'Philimore', 'Graphic Designer', '1943-02-16', 'Female', '62(858)374-1995', 'bphilimoren@unc.edu', '$2232.86', 24);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Andy', 'Colbrun', 'Geological Engineer', '1997-02-07', 'Male', '86(998)223-8898', 'acolbruno@ed.gov', '$1471.18', 25);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Gorden', 'Yurygyn', 'Research Nurse', '1999-07-18', 'Male', '57(163)129-4215', 'gyurygynp@webnode.com', '$2759.43', 26);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Skyler', 'Grealish', 'Administrative Officer', '1942-07-16', 'Male', '351(573)904-5673', 'sgrealishq@discovery.com', '$1919.68', 27);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Bord', 'Dall', 'Pharmacist', '2001-12-16', 'Male', '62(183)129-2584', 'bdallr@omniture.com', '$2393.52', 28);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Hermon', 'Tallant', 'Human Resources Assistant II', '1985-08-29', 'Male', '249(561)797-5237', 'htallants@cbc.ca', '$2769.81', 29);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Marena', 'Howis', 'Pharmacist', '1968-01-27', 'Female', '86(709)648-2596', 'mhowist@google.cn', '$2456.80', 30);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Calvin', 'Jeffes', 'Web Developer IV', '1942-01-08', 'Male', '95(484)501-3039', 'cjeffesu@people.com.cn', '$2582.90', 31);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Bonnee', 'Packman', 'Research Associate', '1983-08-23', 'Female', '62(566)411-7389', 'bpackmanv@psu.edu', '$1415.99', 32);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Rochella', 'Coltman', 'Budget/Accounting Analyst II', '1958-08-04', 'Female', '86(702)273-0802', 'rcoltmanw@home.pl', '$1717.49', 33);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Nap', 'Chmarny', 'Structural Analysis Engineer', '1982-10-12', 'Male', '55(248)904-4479', 'nchmarnyx@springer.com', '$1172.25', 34);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Calv', 'Medlicott', 'Statistician IV', '1943-06-02', 'Male', '57(367)481-1845', 'cmedlicotty@exblog.jp', '$2291.90', 35);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Aldo', 'Antcliff', 'Marketing Manager', '1941-07-17', 'Male', '33(163)524-3164', 'aantcliffz@forbes.com', '$2891.24', 36);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Reinaldos', 'Bednall', 'Accounting Assistant I', '1987-03-01', 'Male', '98(200)681-1832', 'rbednall10@ted.com', '$2297.13', 37);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Cristine', 'Fenny', 'Quality Control Specialist', '1981-04-27', 'Female', '46(412)793-6015', 'cfenny11@godaddy.com', '$1248.41', 38);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Renie', 'Drohane', 'Web Designer III', '1950-10-19', 'Female', '62(148)882-5138', 'rdrohane12@zimbio.com', '$2684.15', 39);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Alfons', 'Clink', 'Geologist III', '1981-09-11', 'Male', '62(846)588-4354', 'aclink13@cdbaby.com', '$1738.02', 40);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Charmian', 'Newsham', 'Web Designer IV', '1963-04-15', 'Female', '86(337)308-7886', 'cnewsham14@howstuffworks.com', '$1706.09', 41);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Sayre', 'Decourcy', 'Systems Administrator IV', '1965-02-26', 'Male', '86(312)128-2338', 'sdecourcy15@huffingtonpost.com', '$2174.27', 42);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Ingra', 'Shirtcliffe', 'Account Coordinator', '2001-06-22', 'Male', '81(805)596-3315', 'ishirtcliffe16@dailymail.co.uk', '$2727.93', 43);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Jacklyn', 'Dow', 'Paralegal', '1958-08-23', 'Female', '63(111)729-0837', 'jdow17@hostgator.com', '$2226.93', 44);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Gwendolin', 'Roubottom', 'Senior Editor', '1974-09-03', 'Female', '46(361)281-3129', 'groubottom18@techcrunch.com', '$2177.81', 45);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Mahmoud', 'McAlpin', 'Staff Scientist', '1948-12-12', 'Male', '359(725)269-0981', 'mmcalpin19@chron.com', '$2412.85', 46);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Germana', 'MacKnockiter', 'Human Resources Assistant III', '1979-05-02', 'Female', '7(230)292-0584', 'gmacknockiter1a@washingtonpost.com', '$2090.96', 47);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Jules', 'Fountaine', 'Editor', '1941-08-04', 'Male', '254(980)604-5642', 'jfountaine1b@uol.com.br', '$2937.49', 48);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Clayborn', 'Woolner', 'Research Nurse', '1943-01-05', 'Male', '33(710)364-8976', 'cwoolner1c@merriam-webster.com', '$1740.35', 49);
insert into funcionario (nome, sobrenome, cargo, nascimento, genero, telefone, email, salario, id_endereco) values ('Shanan', 'Radmer', 'Marketing Manager', '1997-03-09', 'Male', '86(700)559-0489', 'sradmer1d@tuttocitta.it', '$2681.83', 50);



/* CLIENTES */
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Cole', 'Proom', '1955-02-11', 'Male', 'visa-electron', '4405977996238749', 'cproom1e@sitemeter.com', '48(774)517-5893', 51);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Shaughn', 'Sammons', '1982-02-15', 'Male', 'jcb', '3549256932642051', 'ssammons1f@oracle.com', '48(505)561-1655', 52);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Honorable', 'Coralyn', 'Clarae', '1940-11-28', 'Female', 'china-unionpay', '5602243215714987236', 'cclarae1g@spiegel.de', '7(358)804-2844', 53);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Kaleena', 'Ockleshaw', '1976-01-03', 'Female', 'switch', '4936499794349258704', 'kockleshaw1h@psu.edu', '420(472)164-7174', 54);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Pammy', 'Accombe', '1990-05-20', 'Female', 'mastercard', '5438572476681340', 'paccombe1i@arizona.edu', '1(709)256-7608', 55);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Antons', 'Alsopp', '1954-09-07', 'Male', 'jcb', '3549554424180162', 'aalsopp1j@vkontakte.ru', '62(406)410-0257', 56);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Ximenez', 'Deignan', '1961-11-03', 'Male', 'switch', '6759924091934456218', 'xdeignan1k@xrea.com', '86(152)104-6047', 57);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Heinrick', 'Rowswell', '1958-03-24', 'Male', 'diners-club-enroute', '201852995428795', 'hrowswell1l@examiner.com', '82(201)199-8124', 58);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Max', 'Boxall', '1940-05-14', 'Female', 'americanexpress', '376153380542137', 'mboxall1m@so-net.ne.jp', '267(781)695-3859', 59);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Honorable', 'Eve', 'Wainscot', '1969-07-01', 'Female', 'visa-electron', '4844167500085260', 'ewainscot1n@indiatimes.com', '86(755)259-4897', 60);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Merissa', 'Bartolomeo', '1985-10-22', 'Female', 'visa-electron', '4913815636013194', 'mbartolomeo1o@zdnet.com', '86(743)916-0803', 61);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Hugh', 'Helleckas', '1961-05-22', 'Male', 'jcb', '3577152581290315', 'hhelleckas1p@ask.com', '48(590)792-5864', 62);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Honorable', 'Farly', 'Struss', '1962-08-19', 'Male', 'jcb', '3556169394177690', 'fstruss1q@lycos.com', '385(945)949-4048', 63);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mr', 'Emiline', 'Ditts', '1969-10-04', 'Female', 'jcb', '3565593626546266', 'editts1r@oracle.com', '82(261)143-4604', 64);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mrs', 'Hattie', 'Renahan', '1943-12-18', 'Female', 'china-unionpay', '561025681076654622', 'hrenahan1s@google.nl', '48(517)887-1907', 65);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mr', 'Dion', 'Novak', '1958-12-06', 'Female', 'laser', '67717736717158861', 'dnovak1t@epa.gov', '81(676)243-7953', 66);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Annamarie', 'Borsi', '1986-01-28', 'Female', 'visa-electron', '4175000894850479', 'aborsi1u@zimbio.com', '963(495)371-2800', 67);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mr', 'Lianne', 'Cohan', '1945-01-23', 'Female', 'diners-club-enroute', '201918904837283', 'lcohan1v@google.fr', '7(346)958-1045', 68);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mr', 'Sisely', 'Piser', '1997-11-25', 'Female', 'jcb', '3547488940445100', 'spiser1w@cornell.edu', '62(455)881-8270', 69);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Worth', 'Chittem', '1987-08-26', 'Male', 'diners-club-enroute', '201709367102673', 'wchittem1x@exblog.jp', '221(131)357-7455', 70);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Annnora', 'Woolacott', '1951-10-04', 'Female', 'china-unionpay', '5602212856330461', 'awoolacott1y@comsenz.com', '261(185)263-1941', 71);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Renie', 'Siemantel', '1990-07-29', 'Female', 'mastercard', '5002350578428084', 'rsiemantel1z@myspace.com', '234(832)368-5767', 72);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Noelle', 'Dumpleton', '1976-08-13', 'Female', 'diners-club-enroute', '201915341751986', 'ndumpleton20@ebay.co.uk', '86(182)653-3803', 73);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Eudora', 'Ingliss', '1972-05-12', 'Female', 'visa-electron', '4917523588991484', 'eingliss21@exblog.jp', '46(857)850-7143', 74);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mrs', 'Gabbie', 'Butterley', '1951-10-07', 'Male', 'jcb', '3573644601011543', 'gbutterley22@dell.com', '55(526)709-1984', 75);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Lilith', 'Schnitter', '1957-02-21', 'Female', 'jcb', '3535337581001306', 'lschnitter23@noaa.gov', '62(557)279-3793', 76);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mrs', 'Ody', 'Rotter', '1992-08-20', 'Male', 'jcb', '3588155551421023', 'orotter24@dmoz.org', '62(645)114-6472', 77);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Torrie', 'Duffet', '1993-10-24', 'Female', 'china-unionpay', '560223493902841791', 'tduffet25@unesco.org', '60(861)726-4165', 78);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Emlyn', 'Thwaites', '1952-05-04', 'Male', 'visa-electron', '4508543732941446', 'ethwaites26@istockphoto.com', '86(881)564-6435', 79);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mr', 'Dominga', 'Gue', '1988-05-25', 'Female', 'americanexpress', '372301285977379', 'dgue27@simplemachines.org', '855(193)618-0953', 80);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Shadow', 'Lorenc', '1986-09-23', 'Male', 'jcb', '3562314843066498', 'slorenc28@biblegateway.com', '351(139)480-0948', 81);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Cazzie', 'Tudor', '1941-12-05', 'Male', 'diners-club-carte-blanche', '30161008039681', 'ctudor29@marriott.com', '86(232)227-9137', 82);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mr', 'Briano', 'Moline', '1963-12-20', 'Male', 'mastercard', '5555016206994042', 'bmoline2a@slate.com', '62(864)849-9136', 83);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Honorable', 'Kelsey', 'Brook', '1985-06-30', 'Female', 'jcb', '3560459501832012', 'kbrook2b@360.cn', '7(290)961-7267', 84);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mrs', 'Ginni', 'Nana', '1979-06-05', 'Female', 'mastercard', '5100146750808734', 'gnana2c@sohu.com', '52(836)651-8768', 85);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mrs', 'Tiertza', 'Gunn', '1975-02-21', 'Female', 'diners-club-enroute', '201733484928026', 'tgunn2d@ted.com', '55(768)357-1810', 86);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mr', 'Innis', 'Greensted', '1964-09-24', 'Male', 'jcb', '3553194767130012', 'igreensted2e@bloglines.com', '234(823)937-3910', 87);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Chelsea', 'Bleas', '1971-03-19', 'Female', 'china-unionpay', '560224843809149475', 'cbleas2f@si.edu', '355(999)911-5334', 88);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Honorable', 'My', 'Coleridge', '2000-06-10', 'Male', 'laser', '6706638081758391045', 'mcoleridge2g@sphinn.com', '976(912)262-3218', 89);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Hasty', 'Bulch', '1971-09-11', 'Male', 'diners-club-carte-blanche', '30233961700847', 'hbulch2h@angelfire.com', '1(781)386-2974', 90);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Gwyneth', 'Bess', '1990-09-17', 'Female', 'jcb', '3531539603088062', 'gbess2i@engadget.com', '86(323)323-1245', 91);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mr', 'Hayden', 'Litchfield', '1952-05-23', 'Male', 'jcb', '3581026451933853', 'hlitchfield2j@mlb.com', '351(168)235-6700', 92);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Shaylah', 'Moon', '1970-03-13', 'Female', 'diners-club-enroute', '201812120678177', 'smoon2k@yahoo.co.jp', '994(573)363-3154', 93);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Rev', 'Rayshell', 'Plitz', '1948-01-06', 'Female', 'americanexpress', '374622590560719', 'rplitz2l@bloglines.com', '86(827)777-8200', 94);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Dr', 'Horton', 'Lascelles', '1962-11-04', 'Male', 'jcb', '3589064598787926', 'hlascelles2m@g.co', '66(674)165-4142', 95);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Celia', 'Faers', '1952-08-24', 'Female', 'mastercard', '5414596985434089', 'cfaers2n@gmpg.org', '86(104)115-8299', 96);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mrs', 'Katuscha', 'McKechnie', '2000-01-16', 'Female', 'americanexpress', '337941703921691', 'kmckechnie2o@engadget.com', '63(647)386-1307', 97);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Jocelyn', 'Walthew', '1967-08-08', 'Female', 'jcb', '3543216586737421', 'jwalthew2p@digg.com', '30(363)989-5807', 98);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Mrs', 'Orson', 'Atthow', '1984-04-20', 'Male', 'jcb', '3578451718107536', 'oatthow2q@archive.org', '692(277)758-9045', 99);
insert into cliente (titulo, nome, sobrenome, nascimento, genero, cartaobandeira, cartaonumero, email, telefone, id_endereco) values ('Ms', 'Booth', 'Gisburne', '1997-05-28', 'Male', 'jcb', '3555225198064129', 'bgisburne2r@constantcontact.com', '86(556)754-7061', 100);



/* PRODUTO */
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();
INSERT INTO produto () VALUES ();


/* LIVRO */
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Exit', 'Drama|Mystery|Thriller', 'Kunde-Gibson', 'Ellswerth Olechnowicz', '2007-06-02', '$100.72', 67, 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', '301738041-6', 1);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Jönssonligan & den svarta diamanten', 'Comedy', 'Shields LLC', 'Esmaria Cowey', '1986-11-05', '$143.20', 41, 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', '710544718-4', 2);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Eddy Duchin Story, The', 'Drama|Musical|Romance', 'Mosciski, Volkman and Gleichner', 'Neda Leeder', '1992-04-29', '$67.78', 80, 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', '518331505-1', 3);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Tobacco Road', 'Comedy|Drama', 'Kuhn LLC', 'Dasi Riggott', '2001-04-25', '$12.95', 89, 'proin risus praesent lectus vestibulum quam sapien', '642547696-6', 4);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Midnight Run', 'Action|Comedy|Crime|Thriller', 'Schmidt, Walsh and Durgan', 'Queenie Doerffer', '1997-03-01', '$111.34', 123, 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', '971153963-2', 5);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Gamera vs. Guiron', 'Action|Adventure', 'Hintz and Sons', 'Mikael Cushworth', '2000-07-19', '$27.13', 50, 'congue eget semper rutrum nulla', '980620909-5', 6);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Geographer Drank His Globe Away, The (Geograf globus propil)', 'Drama', 'Monahan-Leuschke', 'Burnard Splevin', '1995-02-24', '$122.36', 105, 'porta volutpat quam pede lobortis ligula sit', '875204909-4', 7);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Cold Comfort Farm', 'Comedy', 'Gorczany-Turcotte', 'Fanchon Lawrinson', '1985-10-27', '$97.66', 62, 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', '657869417-X', 8);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Charlie Chan''s Greatest Case', 'Mystery', 'Mills, Will and Cronin', 'Konstantine Goad', '1982-09-14', '$47.80', 124, 'nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', '584481097-X', 9);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('When Night Is Falling', 'Drama|Romance', 'Littel Inc', 'Zandra Willmett', '1984-12-25', '$149.28', 42, 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum', '083112936-0', 10);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Barbarian Queen', 'Action|Adventure|Fantasy', 'Hane, McCullough and Kemmer', 'Adelind Lockhart', '2007-03-16', '$126.80', 67, 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien', '795237052-9', 11);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Saw III', 'Crime|Horror|Thriller', 'Homenick-Weimann', 'Warner Mew', '1980-11-11', '$23.65', 119, 'elit proin risus praesent lectus', '893060572-9', 12);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Undefeated', 'Documentary', 'Vandervort-O''Reilly', 'Gloriane Greim', '1990-08-11', '$113.63', 114, 'eget tempus vel pede morbi porttitor lorem id ligula suspendisse', '362456475-7', 13);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('G.B.F.', 'Comedy', 'Johnson, Aufderhar and Hegmann', 'Rosalind Tremaine', '2001-02-03', '$13.76', 83, 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam', '711782434-4', 14);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Elevator Girl', 'Comedy|Romance', 'Muller, Hegmann and Batz', 'Yoshiko Whal', '2011-02-13', '$18.28', 114, 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', '230505365-7', 15);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('I Think We''re Alone Now', 'Documentary', 'Nikolaus, Gorczany and Predovic', 'Pat Jedrych', '2008-03-29', '$140.24', 49, 'tortor duis mattis egestas metus aenean fermentum', '359590166-5', 16);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('I Served the King of England (Obsluhoval jsem anglického krále)', 'Comedy|Drama|Romance|War', 'Schinner, Donnelly and Stracke', 'Raymund Leese', '2017-10-13', '$93.24', 64, 'eget tempus vel pede morbi porttitor lorem id ligula', '753048160-6', 17);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Event Horizon', 'Horror|Sci-Fi|Thriller', 'McClure-Rowe', 'Colene Hause', '1994-05-29', '$139.72', 82, 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', '468193641-3', 18);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('House of the Devil, The', 'Horror|Thriller', 'Reynolds, Christiansen and Schuster', 'Modesty Rosewell', '1997-07-05', '$102.78', 81, 'in hac habitasse platea dictumst etiam faucibus', '069941969-7', 19);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Asfour Stah', 'Drama', 'Pagac, Kohler and Price', 'Gabrielle Boddy', '2006-11-16', '$118.51', 45, 'diam id ornare imperdiet sapien urna pretium nisl', '320267372-6', 20);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Demon Wind', 'Horror', 'Leannon-Dietrich', 'Mendie Lawlance', '2017-04-13', '$128.21', 131, 'sit amet consectetuer adipiscing elit proin interdum mauris non', '387518179-4', 21);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Bloodsport', 'Action', 'Fisher-Kilback', 'Lindsy Ratt', '2015-11-06', '$81.82', 97, 'ut dolor morbi vel lectus in quam fringilla rhoncus', '624125746-3', 22);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Colin Quinn: Long Story Short', 'Comedy', 'Doyle LLC', 'Betteann Bowdidge', '2013-03-02', '$103.95', 65, 'pellentesque quisque porta volutpat erat quisque erat', '367066788-1', 23);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Blondes at Work', 'Crime|Drama|Mystery|Romance', 'Blick Group', 'Adair Boullin', '2000-12-13', '$118.74', 67, 'mi pede malesuada in imperdiet et commodo vulputate', '990989293-6', 24);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Big Sleep, The', 'Crime|Film-Noir|Mystery', 'Kshlerin-Schuppe', 'Dale Fransewich', '1984-05-10', '$52.57', 114, 'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', '439367783-8', 25);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Core, The', 'Action|Drama|Sci-Fi|Thriller', 'Ritchie, Roob and Doyle', 'Alister Perrygo', '2014-05-06', '$96.15', 87, 'mus vivamus vestibulum sagittis sapien cum sociis natoque', '691846294-6', 26);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Pokémon 3: The Movie', 'Animation|Children', 'Tremblay LLC', 'Ameline Duns', '2005-10-22', '$22.02', 105, 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum', '905613242-3', 27);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Brother''s War', 'War', 'Farrell Group', 'Cecile Haig', '2018-06-17', '$59.04', 113, 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', '491296713-0', 28);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Somersault', 'Drama', 'Glover-Schultz', 'Eberto Brian', '2015-02-25', '$107.19', 50, 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent', '549046044-X', 29);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Carbon Nation', 'Documentary', 'Pacocha-Prosacco', 'Nadine Biddell', '2003-07-31', '$112.68', 44, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', '618470002-2', 30);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Loose Change: Second Edition', 'Documentary|Mystery', 'Eichmann Group', 'Adrianna Hebburn', '2000-03-15', '$19.70', 80, 'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', '644535274-X', 31);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Partners', 'Comedy', 'Kuvalis LLC', 'Amalle Wimpress', '2000-02-16', '$115.96', 41, 'dui vel nisl duis ac nibh fusce lacus purus', '248192812-1', 32);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Tempest', 'Comedy|Drama', 'Bashirian-Turner', 'Aldis Witard', '2004-03-19', '$135.10', 48, 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis', '237625509-0', 33);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Guerrilla: The Taking of Patty Hearst', 'Documentary', 'Wintheiser Inc', 'Vivyanne Vian', '1996-05-21', '$124.02', 107, 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', '690274925-6', 34);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Black Cat, The', 'Adventure|Crime|Horror|Thriller', 'Becker Group', 'Margaretta Biggadike', '1999-12-24', '$96.30', 66, 'nibh fusce lacus purus aliquet', '802322801-3', 35);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Falling (a.k.a. Fallen)', 'Drama', 'Fadel, Walker and Fay', 'Gabby Rattenbury', '2013-10-15', '$79.10', 41, 'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', '713547087-7', 36);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Double Whammy', 'Action|Comedy|Drama', 'Crist-Rempel', 'Francesco Wavish', '2000-03-03', '$115.87', 98, 'turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo', '835857740-0', 37);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Joulupukki ja noitarumpu', 'Animation|Children', 'Flatley, Cronin and Wisoky', 'Hannie Avraam', '2014-07-12', '$138.27', 78, 'mus vivamus vestibulum sagittis sapien cum sociis', '634108098-0', 38);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Holding, The', 'Horror|Thriller', 'Dooley Inc', 'Mattias Penreth', '2004-03-29', '$80.50', 56, 'porttitor id consequat in consequat ut nulla sed accumsan felis', '839765260-4', 39);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Not Your Typical Bigfoot Movie', 'Documentary', 'Dibbert-Bechtelar', 'Imogene Le Marchand', '2007-02-04', '$110.33', 127, 'non interdum in ante vestibulum ante ipsum primis in faucibus', '945306615-X', 40);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Favor, The', 'Comedy|Romance', 'Erdman-Morar', 'Cathrine Lippard', '2002-04-13', '$132.80', 49, 'morbi a ipsum integer a nibh in quis justo', '836441506-9', 41);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Cosmic Monster, The', 'Drama|Horror|Sci-Fi', 'Will-Morissette', 'Esmeralda Boncore', '2001-10-07', '$11.62', 104, 'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus', '877760048-7', 42);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Orderly or Disorderly (Be Tartib ya Bedoun-e Tartib)', 'Documentary', 'Buckridge LLC', 'Kenyon Curtois', '1983-04-26', '$5.35', 95, 'parturient montes nascetur ridiculus mus', '095602289-8', 43);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Crows Zero (Kurôzu zero)', 'Action', 'Erdman, Hartmann and Mayer', 'Francois McReynold', '1984-02-20', '$126.86', 94, 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', '409705001-X', 44);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Dead of Night', 'Horror|Mystery', 'Volkman-Champlin', 'Leonora Luxton', '2015-08-12', '$45.84', 140, 'molestie nibh in lectus pellentesque', '432756499-0', 45);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Last Winter (L''hiver dernier)', 'Drama', 'Cormier-Strosin', 'Anthe Jeannard', '1996-12-21', '$100.05', 104, 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', '999070923-8', 46);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Next Man, The', 'Action|Thriller', 'Franecki-McCullough', 'Zebadiah Rebanks', '1998-10-07', '$46.57', 127, 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', '956410579-X', 47);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Cast Away', 'Drama', 'Daniel Inc', 'Junie Belfrage', '1986-02-12', '$30.00', 63, 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit', '802965102-3', 48);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Judy Berlin', 'Drama', 'Corkery, Sawayn and McCullough', 'Estrellita Slimings', '1990-05-07', '$140.50', 123, 'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus', '718441455-1', 49);
insert into livro (nome, genero, editora, autor, data_lancamento, preco, porcentagem_lucro, descricao, isbn, id_produto) values ('Those Magnificent Men in Their Flying Machines', 'Action|Adventure|Comedy', 'Parker LLC', 'Roderic Binding', '2002-12-13', '$123.61', 80, 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', '260673403-3', 50);



/* FILME */
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('White Reindeer', 'Comedy|Drama', 'Keebler and Sons', 'Lazarus Dashkovich', '2007-09-14', '$57.79', 83, 'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna', 51);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Breaking News (Daai si gin)', 'Action|Crime|Drama', 'Parker-Hintz', 'Bonnie Aseef', '2008-03-28', '$65.34', 55, 'velit donec diam neque vestibulum eget vulputate ut', 52);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Last Stop 174 (Última Parada 174) ', 'Crime|Drama|Thriller', 'Wisoky-Jaskolski', 'Val Shillam', '1995-08-01', '$113.82', 126, 'velit nec nisi vulputate nonummy', 53);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Force Majeure (Turist)', 'Drama', 'Gibson-Dietrich', 'August Mingardo', '2018-11-16', '$30.01', 81, 'elementum pellentesque quisque porta volutpat erat quisque erat', 54);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('House of Sand and Fog', 'Drama', 'Beier Group', 'Hashim Jankiewicz', '2016-07-09', '$86.40', 102, 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor', 55);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Mannequin 2: On the Move', 'Comedy|Fantasy|Romance', 'Huel, Gulgowski and Robel', 'Alexandra Woolford', '1989-09-16', '$9.70', 102, 'sem duis aliquam convallis nunc proin at', 56);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Ringers: Lord of the Fans', 'Comedy|Documentary', 'Halvorson, Gottlieb and Bashirian', 'Hyacintha Gregorio', '1986-01-28', '$16.22', 60, 'etiam justo etiam pretium iaculis justo in hac habitasse', 57);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Bulletproof Monk', 'Action|Adventure|Sci-Fi', 'Hermiston, Kuhic and Bauch', 'Merrili Cheater', '1996-11-15', '$43.73', 51, 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan', 58);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('8 (8, the Play)', 'Drama', 'Leffler, Robel and Jast', 'Colas McNae', '2007-07-25', '$106.88', 123, 'quis orci eget orci vehicula condimentum', 59);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Details, The', 'Comedy', 'Steuber, Oberbrunner and Russel', 'Oswald Offer', '2017-03-23', '$103.28', 117, 'gravida sem praesent id massa', 60);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Judy Berlin', 'Drama', 'Veum-Lindgren', 'Phillipe Richards', '1990-02-16', '$125.61', 44, 'sit amet diam in magna bibendum imperdiet nullam orci', 61);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Voyage to the End of the Universe (Ikarie XB 1)', 'Sci-Fi', 'Welch, Collins and Conn', 'Nat Brisset', '2002-03-30', '$149.21', 101, 'nullam porttitor lacus at turpis donec posuere metus', 62);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Sisters (Syostry)', 'Action|Crime|Drama', 'Erdman, Ledner and Goodwin', 'Aristotle Blankman', '2014-08-25', '$92.54', 121, 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi', 63);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Smoke on the Potato Fields (Dým bramborové nate)', 'Drama', 'Schroeder, VonRueden and Kovacek', 'Conroy Sinott', '2003-06-14', '$77.65', 75, 'libero ut massa volutpat convallis morbi odio odio', 64);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Krull', 'Action|Adventure|Fantasy|Sci-Fi', 'Jaskolski, Metz and Prosacco', 'Anabel Scamadin', '2001-12-31', '$24.73', 66, 'quis turpis sed ante vivamus tortor duis', 65);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Flakes', 'Comedy', 'Adams, Schmidt and Konopelski', 'Torr Mumberson', '2004-05-05', '$44.34', 56, 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', 66);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Soap and Water', 'Comedy', 'Gerlach-Beer', 'Odo Backwell', '1986-06-11', '$54.32', 64, 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', 67);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Dracula', 'Horror', 'Beer Inc', 'Bertine Goldsby', '2002-03-01', '$86.61', 138, 'dolor vel est donec odio justo', 68);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Batman Returns', 'Action|Crime', 'Quigley-Beatty', 'Tabbatha Dyne', '1983-12-21', '$126.95', 123, 'lectus suspendisse potenti in eleifend quam a odio in hac habitasse', 69);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Daleks'' Invasion Earth: 2150 A.D.', 'Adventure|Sci-Fi', 'Wolff LLC', 'Vanessa Wiltsher', '2001-07-19', '$80.69', 105, 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', 70);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Tokyo-Ga', 'Documentary', 'O''Keefe-Cole', 'Gunter Mottershaw', '1988-08-03', '$105.02', 99, 'mi nulla ac enim in tempor turpis nec euismod', 71);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Harriet the Spy', 'Children|Comedy', 'Fahey-Beahan', 'Zachery Ladon', '1998-12-11', '$70.11', 81, 'etiam pretium iaculis justo in hac habitasse', 72);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Physical Evidence', 'Crime|Thriller', 'Ebert-Kessler', 'Doug Colvin', '2013-05-18', '$134.96', 119, 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', 73);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Jersey Girl', 'Comedy|Drama|Romance', 'Ankunding, Hand and Nolan', 'Nickie Benasik', '1989-11-18', '$32.46', 46, 'vehicula consequat morbi a ipsum integer a nibh in', 74);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Match, The', 'Comedy|Romance', 'Maggio LLC', 'Daphna Deering', '2005-09-16', '$109.06', 114, 'diam neque vestibulum eget vulputate', 75);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('International House', 'Comedy', 'Wisozk Group', 'Lianna Craze', '2012-08-28', '$21.56', 136, 'nulla elit ac nulla sed vel enim sit amet', 76);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Laggies', 'Comedy|Romance', 'Collins and Sons', 'Bertine Crummie', '1995-03-22', '$140.98', 140, 'ut at dolor quis odio consequat varius integer', 77);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Thieves'' Highway', 'Drama|Film-Noir|Thriller', 'Botsford, Klocko and Abbott', 'Ethelbert Dagger', '1981-06-18', '$52.82', 86, 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', 78);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Freeheld', 'Documentary', 'Nikolaus Inc', 'Cordi Bow', '1980-10-30', '$64.00', 59, 'feugiat et eros vestibulum ac', 79);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Live Free or Die Hard', 'Action|Adventure|Crime|Thriller', 'Lakin-Nitzsche', 'Liana Whilder', '1997-12-11', '$69.49', 84, 'lectus aliquam sit amet diam in magna bibendum', 80);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('War of the Shaolin Temple (Shao Lin shi san gun seng)', 'Action|Adventure|War', 'Cummings Group', 'Sterne Reck', '1986-09-13', '$44.90', 79, 'lobortis ligula sit amet eleifend pede libero quis orci', 81);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Gambler, The (Játékos, A)', 'Drama', 'Harvey, Halvorson and Lockman', 'Robinett Davidson', '1992-03-21', '$82.03', 48, 'nullam orci pede venenatis non sodales sed tincidunt eu felis', 82);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Wszystko, co kocham', 'Comedy|Drama', 'Jaskolski, Gusikowski and Moen', 'Sybila Sammon', '1995-10-30', '$47.29', 75, 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', 83);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('I Love You, I Love You Not', 'Drama|Romance', 'Donnelly, Ritchie and Halvorson', 'Joana Fenney', '2009-05-06', '$34.62', 54, 'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', 84);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Too Many Cooks', 'Comedy', 'Kuphal-Bailey', 'Marin McNutt', '2012-05-13', '$78.04', 82, 'suspendisse accumsan tortor quis turpis sed', 85);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Mountaintop Motel Massacre ', 'Horror|Thriller', 'Wilderman, Zemlak and Lakin', 'Wallie Fishlock', '1981-03-03', '$5.91', 83, 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', 86);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Thirteenth Floor, The', 'Drama|Sci-Fi|Thriller', 'Upton, Cartwright and Morar', 'Deedee Heinonen', '1999-12-15', '$10.71', 103, 'etiam vel augue vestibulum rutrum rutrum neque', 87);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Party, The (Boum, La)', 'Comedy|Romance', 'Gutkowski, Breitenberg and Balistreri', 'Camilla Conor', '2004-08-15', '$43.23', 64, 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', 88);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Nenette and Boni (Nénette et Boni)', 'Drama', 'Herman-Feil', 'Lorelle de Quesne', '1985-07-14', '$92.75', 67, 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum', 89);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('That Day (Ce jour-là)', 'Comedy|Crime|Drama|Mystery', 'Stracke, Flatley and Deckow', 'Tabor Nise', '2018-03-15', '$21.75', 129, 'potenti nullam porttitor lacus at turpis donec posuere metus', 90);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Escape from Planet Earth', 'Adventure|Animation|Comedy|Sci-Fi', 'Johns-Mayert', 'Lorrie Pierton', '1990-09-02', '$74.57', 106, 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', 91);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('American Gun', 'Drama', 'Lakin, Satterfield and Kuhn', 'Lesya Friett', '1985-11-05', '$45.59', 64, 'in est risus auctor sed tristique in tempus sit amet sem', 92);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('From Here to Eternity', 'Drama|Romance|War', 'Armstrong-Bartell', 'Alejandrina Allberry', '2014-12-03', '$39.92', 94, 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', 93);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Band of the Hand', 'Action|Crime|Drama', 'Gulgowski, Kautzer and Harris', 'Sean Pierce', '2010-08-01', '$119.57', 92, 'ligula in lacus curabitur at ipsum ac tellus', 94);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('And Soon the Darkness', 'Mystery|Thriller', 'Goyette and Sons', 'Eadie Berr', '2011-08-29', '$7.31', 66, 'risus praesent lectus vestibulum quam sapien varius ut blandit', 95);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Changing Lanes', 'Drama|Thriller', 'Bernier, Hackett and Langosh', 'Ody Hallford', '2016-03-14', '$6.52', 60, 'nisl aenean lectus pellentesque eget nunc donec', 96);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Hard Ticket to Hawaii', 'Action|Comedy', 'Stokes Inc', 'Stacey Sherreard', '2011-01-29', '$104.53', 120, 'et magnis dis parturient montes', 97);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Mother and Child', 'Drama', 'Hamill-McCullough', 'Wilburt Cattermole', '2015-06-10', '$126.78', 95, 'faucibus orci luctus et ultrices posuere', 98);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Imagine Me & You', 'Comedy|Drama|Romance', 'Beatty-MacGyver', 'Eadith Strangwood', '2013-11-05', '$89.06', 72, 'vel augue vestibulum ante ipsum primis in faucibus', 99);
insert into filme (nome, genero, produtora, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Kenny Begins', 'Action|Comedy|Sci-Fi', 'Mayer LLC', 'Lethia Gurry', '2014-11-24', '$140.37', 87, 'lorem ipsum dolor sit amet consectetuer', 100);



/* JOGO */
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Unfaithfully Yours', 'Comedy|Romance', 'Mann-Konopelski', 'Lisette McLucas', '2007-12-06', '$141.00', 62, 'nisi vulputate nonummy maecenas tincidunt', 101);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Cousin Bette', 'Comedy', 'Thiel-Wehner', 'Genevra Muehle', '2002-02-04', '$137.93', 129, 'fringilla rhoncus mauris enim leo rhoncus', 102);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Delusions of Grandeur (La folie des grandeurs)', 'Comedy', 'Brekke LLC', 'Inness Drakes', '2001-05-24', '$128.84', 76, 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget', 103);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Hot Tub Time Machine 2', 'Comedy|Sci-Fi', 'Jast LLC', 'Vicki Castiblanco', '1997-06-23', '$69.93', 74, 'dapibus augue vel accumsan tellus nisi eu orci mauris', 104);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Milk', 'Drama', 'Lang, Berge and Zboncak', 'Ignacio Scowen', '2013-01-21', '$131.14', 97, 'lobortis vel dapibus at diam nam tristique tortor eu', 105);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Cool Runnings', 'Comedy', 'Gutmann, Lueilwitz and Bechtelar', 'Andreas Newburn', '1988-02-15', '$113.56', 84, 'ipsum ac tellus semper interdum', 106);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Fixer, The', 'Drama', 'Pollich-Wisozk', 'Brandy Waiton', '1989-12-04', '$24.69', 49, 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', 107);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Sandor slash Ida', 'Drama|Romance', 'Blick Group', 'Aylmar Bowra', '2007-08-24', '$103.57', 139, 'aliquam convallis nunc proin at', 108);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Good Heart, The', 'Drama', 'Friesen and Sons', 'Davis Gothard', '2014-10-19', '$122.59', 89, 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', 109);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Police Academy 6: City Under Siege', 'Comedy|Crime', 'Keeling LLC', 'Oriana Harrema', '1989-10-15', '$66.62', 45, 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', 110);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Untraceable', 'Crime|Thriller', 'Cormier-Huels', 'Isidore Beeby', '2013-04-04', '$89.84', 135, 'in faucibus orci luctus et ultrices', 111);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Night They Raided Minsky''s, The (Night They Invented Striptease, The)', 'Comedy', 'Abbott-Gislason', 'Starla Nisard', '2010-02-19', '$37.76', 106, 'donec odio justo sollicitudin ut suscipit a feugiat', 112);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Missing, The', 'Adventure|Thriller|Western', 'Durgan-Auer', 'Chrissie Cornell', '2012-11-30', '$133.37', 103, 'in libero ut massa volutpat convallis morbi odio odio elementum eu', 113);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Nada Gang, The (Nada)', 'Thriller', 'McDermott-Romaguera', 'Lorenza Baume', '1982-08-19', '$132.75', 118, 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', 114);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('American Soldier, The (Der amerikanische Soldat)', 'Drama', 'Boyle, DuBuque and Reilly', 'Jody Galliford', '1989-06-19', '$65.60', 105, 'luctus et ultrices posuere cubilia curae nulla dapibus', 115);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Forever Strong', 'Drama', 'Stark, Block and Johnston', 'Marco Game', '2019-02-04', '$17.27', 121, 'condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', 116);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Dirty Deeds', 'Comedy', 'Schimmel, Okuneva and Deckow', 'Ash Litterick', '1998-10-24', '$114.07', 116, 'proin interdum mauris non ligula', 117);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Beyond Re-Animator', 'Horror', 'Rice, Torp and Hilpert', 'Skipton Placide', '2008-06-11', '$7.94', 57, 'erat curabitur gravida nisi at nibh', 118);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Teenage Mutant Ninja Turtles III', 'Action|Adventure|Children|Comedy|Fantasy', 'Cummerata-Beatty', 'Farlie Figure', '1982-11-28', '$117.88', 88, 'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 119);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('School Ties', 'Drama', 'Wisozk Group', 'Elga Le Batteur', '2010-07-15', '$69.15', 114, 'tortor sollicitudin mi sit amet lobortis', 120);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Floundering', 'Comedy', 'Bosco, D''Amore and Kessler', 'Charley Kellart', '1981-03-09', '$42.64', 65, 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', 121);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Mr Reliable', '(no genres listed)', 'Jones-Crist', 'Matty Mapples', '2011-03-21', '$40.91', 86, 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', 122);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Paraíso Travel', 'Adventure|Drama|Romance', 'Mueller-Hammes', 'Libbie Rippingall', '1989-01-05', '$37.27', 126, 'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', 123);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Foreigner, The', 'Drama', 'Hamill, Carter and Hintz', 'Mitchel Dennidge', '1984-10-27', '$40.40', 117, 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', 124);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('William S. Burroughs: A Man Within', 'Documentary', 'Kris and Sons', 'Anabal Lain', '2016-12-12', '$140.86', 83, 'luctus cum sociis natoque penatibus et magnis dis parturient montes', 125);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Prison (Fängelse) ', 'Drama', 'Kessler and Sons', 'Verine McAnulty', '1998-01-02', '$16.23', 56, 'at vulputate vitae nisl aenean lectus pellentesque eget', 126);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Alabama Moon', 'Adventure|Children|Drama', 'Ernser Group', 'Krissie Purves', '1982-06-30', '$124.35', 78, 'magna vulputate luctus cum sociis natoque penatibus et magnis dis', 127);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Faces in the Crowd', 'Crime|Drama|Mystery', 'Shields-Daugherty', 'Herbert Lafee', '2009-12-20', '$102.90', 91, 'platea dictumst aliquam augue quam sollicitudin', 128);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Citizen Dog (Mah nakorn)', 'Comedy|Fantasy|Romance', 'Ankunding, DuBuque and Stokes', 'Alli Ree', '2015-04-18', '$104.92', 136, 'eu nibh quisque id justo sit amet sapien dignissim', 129);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Bling: A Planet Rock', 'Documentary', 'Fahey-Hegmann', 'Norby Cluitt', '2009-10-25', '$92.54', 95, 'eros elementum pellentesque quisque porta volutpat erat', 130);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Red and the White, The (Csillagosok, katonák)', 'Drama|War', 'Feil LLC', 'Davie Gladeche', '1999-01-31', '$148.27', 103, 'in faucibus orci luctus et ultrices', 131);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Pride and Prejudice', 'Drama|Romance', 'Yundt-Gaylord', 'Mendie Mufford', '2017-10-09', '$106.29', 105, 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 132);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Cinema Paradiso (Nuovo cinema Paradiso)', 'Drama', 'Lockman, Prohaska and Bahringer', 'Valdemar Matysik', '1984-04-12', '$98.39', 70, 'pretium iaculis diam erat fermentum', 133);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Two Kilers (Kilerów 2-óch)', 'Comedy|Crime', 'Schmitt, Rodriguez and Jenkins', 'Nita Darbey', '2012-04-10', '$116.81', 133, 'id massa id nisl venenatis lacinia aenean sit', 134);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('God’s Wedding (As Bodas de Deus)', 'Comedy', 'Barton LLC', 'Dario Hugle', '1986-03-02', '$13.19', 130, 'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', 135);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Good Heart, The', 'Drama', 'Bruen LLC', 'Liane Jeffs', '1987-01-23', '$133.67', 63, 'rhoncus aliquam lacus morbi quis', 136);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Secret Garden, The', 'Children|Drama', 'Goyette, Ortiz and Morar', 'Ema Cheetam', '1983-07-24', '$60.78', 64, 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros', 137);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Lawnmower Man 2: Beyond Cyberspace', 'Action|Sci-Fi|Thriller', 'Waelchi-Schuppe', 'Benson Gaskin', '1998-11-05', '$67.75', 136, 'nunc rhoncus dui vel sem sed', 138);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Constant Nymph, The', 'Drama|Romance', 'Blanda-Mertz', 'Kimbell Grenter', '2008-05-06', '$38.30', 134, 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 139);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('One, Two, Three', 'Comedy', 'Kozey-Von', 'Vikki Ackerman', '2007-08-24', '$110.12', 127, 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', 140);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Mississippi Burning', 'Crime|Drama|Thriller', 'Considine, Lueilwitz and Rogahn', 'Maurizio Krzyzaniak', '2007-05-08', '$77.22', 104, 'quis orci eget orci vehicula condimentum curabitur', 141);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Hi-Line, The', 'Drama', 'Bruen and Sons', 'Junina Cescot', '1985-10-17', '$59.51', 119, 'rutrum ac lobortis vel dapibus at', 142);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Jaws 2', 'Horror|Thriller', 'Hills Inc', 'Roxana Cheetham', '2016-09-05', '$123.38', 125, 'nec nisi vulputate nonummy maecenas tincidunt', 143);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Over Your Dead Body', 'Horror', 'Johns, Erdman and Greenholt', 'Maddi Cordingley', '1989-09-03', '$32.94', 128, 'cras non velit nec nisi vulputate', 144);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Crazy People', 'Comedy', 'Thompson, Bednar and Mosciski', 'Jocelyne Kilminster', '1985-10-23', '$62.87', 121, 'donec odio justo sollicitudin ut suscipit a', 145);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Deep Crimson (Profundo carmesí)', 'Crime|Drama', 'Stracke Inc', 'Adel Monk', '1984-06-12', '$149.12', 50, 'sed vestibulum sit amet cursus', 146);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('First Descent', 'Documentary', 'Harvey-Muller', 'Melisa Alders', '1997-04-18', '$88.29', 55, 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', 147);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('People Will Talk', 'Comedy|Romance', 'Becker LLC', 'Lorna Hamp', '1992-01-06', '$102.38', 86, 'augue quam sollicitudin vitae consectetuer eget rutrum at', 148);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Xala', 'Comedy', 'Fahey LLC', 'Natty Denholm', '2010-04-14', '$79.88', 129, 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci', 149);
insert into jogo (nome, genero, estudio, diretor, data_lancamento, preco, porcentagem_lucro, descricao, id_produto) values ('Fist of Jesus', '(no genres listed)', 'Collins Inc', 'Jemima Hensmans', '1993-05-22', '$127.86', 77, 'nibh in hac habitasse platea dictumst aliquam', 150);



/* PEDIDO */
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2016-02-03', 1, 1);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2018-10-13', 2, 2);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2012-07-16', 3, 3);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2019-12-14', 4, 4);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2012-03-03', 5, 5);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2014-12-11', 6, 6);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2015-03-06', 7, 7);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2010-02-06', 8, 8);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2014-12-09', 9, 9);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2015-03-16', 10, 10);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2016-02-02', 11, 11);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2012-09-25', 12, 12);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2010-05-14', 13, 13);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2010-09-01', 14, 14);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2014-03-09', 15, 15);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2010-05-01', 16, 16);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2013-07-30', 17, 17);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2012-11-05', 18, 18);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2010-02-08', 19, 19);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2012-04-14', 20, 20);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2010-06-28', 21, 21);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2015-03-16', 22, 22);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2017-11-13', 23, 23);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2015-03-27', 24, 24);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2011-09-20', 25, 25);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2018-02-19', 26, 26);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2015-05-01', 27, 27);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2016-08-13', 28, 28);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2014-12-10', 29, 29);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2011-09-20', 30, 30);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2015-10-05', 31, 31);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2016-10-08', 32, 32);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2011-07-27', 33, 33);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2014-03-17', 34, 34);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2016-04-05', 35, 35);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2012-12-09', 36, 36);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2015-03-26', 37, 37);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2016-04-13', 38, 38);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2015-06-13', 39, 39);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2016-04-26', 40, 40);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2010-08-26', 41, 41);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2016-01-16', 42, 42);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2017-11-25', 43, 43);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2016-06-11', 44, 44);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2012-04-12', 45, 45);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2017-02-07', 46, 46);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2013-07-27', 47, 47);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2019-08-01', 48, 48);
insert into pedido (pago, data, id_cliente, id_funcionario) values (true, '2014-12-08', 49, 49);
insert into pedido (pago, data, id_cliente, id_funcionario) values (false, '2012-01-12', 50, 50);



/* LISTA_PRODUTOS */
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 11, 1, 1);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 9, 2, 2);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 16, 3, 3);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 6, 4, 4);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 7, 5, 5);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 16, 6, 6);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 9, 7, 7);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 18, 8, 8);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 6, 9, 9);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 15, 10, 10);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 4, 11, 11);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 11, 12, 12);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 9, 13, 13);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 3, 14, 14);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 13, 15, 15);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 10, 16, 16);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 9, 17, 17);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 16, 18, 18);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 15, 19, 19);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 18, 20, 20);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 8, 21, 21);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 10, 22, 22);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 5, 23, 23);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 13, 24, 24);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 6, 25, 25);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 6, 26, 26);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 13, 27, 27);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 10, 28, 28);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 18, 29, 29);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 10, 30, 30);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 13, 31, 31);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 9, 32, 32);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 14, 33, 33);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 12, 34, 34);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 16, 35, 35);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 17, 36, 36);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 10, 37, 37);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 4, 38, 38);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 4, 39, 39);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 4, 40, 40);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 15, 41, 41);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 13, 42, 42);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 3, 43, 43);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 3, 44, 44);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 16, 45, 45);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (1, 4, 46, 46);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 13, 47, 47);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 10, 48, 48);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (2, 9, 49, 49);
insert into lista_produtos (qtd, desconto, id_produto, id_pedido) values (3, 6, 50, 50);
