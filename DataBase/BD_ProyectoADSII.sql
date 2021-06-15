CREATE DATABASE IF NOT EXISTS base_academia_montero;
DROP DATABASE base_academia_montero;
USE base_academia_montero;

CREATE TABLE IF NOT EXISTS talumnoSolicitudRegistro
(
IdAlumno VARCHAR(6) PRIMARY KEY,
IdSolicitudRegistro VARCHAR(6) NOT NULL,
Contraseña VARCHAR(50) NOT NULL,
FechaDeRegistro date NOT NULL, 
Nombre VARCHAR(50) NOT NULL, 
ApellidoPaterno VARCHAR(50) NOT NULL, 
ApellidoMaterno VARCHAR(50) NOT NULL, 
NumeroDeCelular VARCHAR(50) NOT NULL, 
Correo VARCHAR(50) NOT NULL, 
NumeroDeApoderado VARCHAR(50),
NombreDeApoderado VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS tinscripcionHorario
(
IdInscripcion VARCHAR(6) PRIMARY KEY,
foreign key (IdAlumno) references talumnoSolicitudRegistro(IdAlumno),
IdAlumno VARCHAR(6),
IdHorario VARCHAR(6),
MetodoDePago VARCHAR(50),
Ciclo varchar(50)
);


CREATE TABLE IF NOT EXISTS tadministrador
(
IdAdministrador VARCHAR(6) PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL, 
ApellidoPaterno VARCHAR(50) NOT NULL, 
ApellidoMaterno VARCHAR(50) NOT NULL, 
Correo VARCHAR(50) NOT NULL,
NumeroDeCelular VARCHAR(50) NOT NULL, 
Domicilio VARCHAR(50) NOT NULL,
FechaRegistro DATE
);


CREATE TABLE IF NOT EXISTS tentidadBancaria
(
IdEntidadBancaria VARCHAR(6) PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Direccion VARCHAR(50) NOT NULL,
Telefono VARCHAR(50), 
RUC VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS tregistroAcademico 
(
IdRegistro VARCHAR(6) PRIMARY KEY,
foreign key (IdInscripcion) references tinscripcionHorario(IdInscripcion),
IdInscripcion VARCHAR(6) NOT NULL,
cicloAcademico VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS tregistroNota
(
IdRegistroNota VARCHAR(6) PRIMARY KEY,
foreign key (IdRegistro) references tregistroAcademico(IdRegistro),
IdRegistro VARCHAR(6) NOT NULL,
NumeroExamen INT NOT NULL,
Nota Decimal(10,2),
FechaRegistro Date
);


CREATE TABLE IF NOT EXISTS tregistroAsistencia
(
IdRegistroAsistencia VARCHAR(6) PRIMARY KEY,
foreign key (IdRegistro) references tregistroAcademico(IdRegistro),
IdRegistro VARCHAR(6) NOT NULL,
FechaDeRegistro DATE NOT NULL,
Asistio BOOLEAN NOT NULL
);


CREATE TABLE IF NOT EXISTS tpago
(
IdPago VARCHAR(6) PRIMARY KEY,
foreign key (IdInscripcion) references tinscripcionHorario(IdInscripcion),
IdInscripcion VARCHAR(6) NOT NULL,
foreign key (IdAdministrador) references tadministrador(IdAdministrador),
IdAdministrador VARCHAR(6),
foreign key (IdEntidadBancaria) references tentidadBancaria(IdEntidadBancaria),
IdEntidadBancaria VARCHAR(6),
MontoTotal DECIMAL(10,2),
FechaDePago DATE
);


CREATE TABLE IF NOT EXISTS tcomprobante
(
NumeroDeSerie VARCHAR(6) PRIMARY KEY,
foreign key (IdPago) references tpago(IdPago),
IdPago VARCHAR(6) NOT NULL,
RUC VARCHAR(50) NOT NULL,
MontoPago DECIMAL(10,2),
Cliente VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS tdocente
(
IdDocente VARCHAR(6) PRIMARY KEY,
foreign key (IdAdministrador) references tadministrador(IdAdministrador),
IdAdministrador VARCHAR(6),
Nombre VARCHAR(50),
ApellidoPaterno VARCHAR(50),
ApellidoMaterno VARCHAR(50),
NumeroDeCelular VARCHAR(50),
Correo VARCHAR(50),
Especialidad VARCHAR(50),
FechaDeRegistro Date
);


CREATE TABLE IF NOT EXISTS tcurso
(
IdCurso VARCHAR(6) PRIMARY KEY,
foreign key (IdDocente) references tdocente(IdDocente),
IdDocente VARCHAR(6) NOT NULL,
foreign key (IdAdministrador) references tadministrador(IdAdministrador),
IdAdministrador VARCHAR(6) NOT NULL,
NombreCurso VARCHAR(50) NOT NULL,
CapacidadEstudiante INT NOT NULL,
LinkClassroom VARCHAR(50) NOT NULL,
CostoCurso DECIMAL(10,2) NOT NULL,
Descripcion VARCHAR(200) NOT NULL,
CicloCurso VARCHAR(50) NOT NULL
); 


CREATE TABLE IF NOT EXISTS tcursoDiaHoraSesion
(
IdCurso_Hora VARCHAR(6) primary key,
foreign key (IdCurso) references tcurso(IdCurso),
IdCurso VARCHAR(6) NOT NULL,
DiaSesion VARCHAR(50) NOT NULL,
HoraInicio TIME NOT NULL,
HoraFinal TIME NOT NULL
);


CREATE TABLE IF NOT EXISTS tinscripcionCurso
(
IdInscripcion_Curso VARCHAR(6) PRIMARY KEY,
foreign key (IdInscripcion) references tinscripcionHorario(IdInscripcion),
IdInscripcion VARCHAR(6) NOT NULL,
foreign key (IdCurso) references tcurso(IdCurso),
IdCurso VARCHAR(6) NOT NULL
);


CREATE TABLE IF NOT EXISTS tcursoRegistroNota
(
IdCurso_RegistroNota VARCHAR(6) PRIMARY KEY,
foreign key (IdRegistroNota) references tregistroNota(IdRegistroNota),
IdRegistroNota VARCHAR(6) NOT NULL,
foreign key (IdCurso) references tcurso(IdCurso),
IdCurso VARCHAR(6) NOT NULL
);


CREATE TABLE IF NOT EXISTS tcursoRegistroAsistencia
(
IdCurso_RegistroAsistencia VARCHAR(6) PRIMARY KEY,
foreign key (IdCurso) references tcurso(IdCurso),
IdCurso VARCHAR(6) NOT NULL,
foreign key (IdRegistroAsistencia) references tregistroAsistencia(IdRegistroAsistencia),
IdRegistroAsistencia VARCHAR(6) NOT NULL
);
show tables;
describe talumnoSolicitudRegistro;
-- Agregar 20 datos a cada tabla


-- talumnosolicitudRegistro 1
insert into talumnoSolicitudRegistro values("A00001","S00001","contrasenia1","2021-07-23","Daniel","Paredes","Morales","987311440","Daniel@hotmail.com","952354245","Julio Cesar");
insert into talumnoSolicitudRegistro values("A00002","S00002","contrasenia2","2021-07-23","Jose","Aguilar","Medina","954712365","Jose@hotmail.com","963584103","Marta");
insert into talumnoSolicitudRegistro values("A00003","S00003","contrasenia3","2021-07-23","Luis","Salazar","Rivera","987451478","Luis@hotmail.com","968523014","Alexander");
insert into talumnoSolicitudRegistro values("A00004","S00004","contrasenia4","2021-07-23","Carlos","Reyes","Martinez","968512340","Carlos@hotmail.com","974152369","Mateo");
insert into talumnoSolicitudRegistro values("A00005","S00005","contrasenia5","2021-07-23","Rosa","Castro","Condori","974512487","Rosa@hotmail.com","987541263","Ernesto");
insert into talumnoSolicitudRegistro values("A00006","S00006","contrasenia6","2021-07-23","Jorge","Cordoba","Silva","935214023","Jorge@hotmail.com","963025478","Diego");
insert into talumnoSolicitudRegistro values("A00007","S00007","contrasenia7","2021-07-23","Victor","Gomez","Romero","968742126","Victor@hotmail.com","935214758","Maribel");
insert into talumnoSolicitudRegistro values("A00008","S00008","contrasenia8","2021-07-23","Ana","De la Cruz","Ruiz","974582360","Ana@hotmail.com","963258741","Maria");
insert into talumnoSolicitudRegistro values("A00009","S00009","contrasenia9","2021-07-23","Luz","Cruz","Gutierrez","974521405","Luz@hotmail.com","901254786","Augusto");
insert into talumnoSolicitudRegistro values("A00010","S00010","contrasenia10","2021-07-23","Carmen","Vargas","Fernandez","965478136","Carmen@hotmail.com","932478512","Tomas");
insert into talumnoSolicitudRegistro values("A00011","S00011","contrasenia11","2021-07-23","Cesar","Castillo","Espinoza","9874521365","Cesar@hotmail.com","987456321","Juan");
insert into talumnoSolicitudRegistro values("A00012","S00012","contrasenia12","2021-07-23","Miguel","Chavez","Mendoza","985632147","Miguel@hotmail.com","963254123","Rodrigo");
insert into talumnoSolicitudRegistro values("A00013","S00013","contrasenia13","2021-07-23","Jesus","Rameriz","Gonzales","963258741","Jesus@hotmail.com","987456320","Samuel");
insert into talumnoSolicitudRegistro values("A00014","S00014","contrasenia14","2021-07-23","Julio","Diaz","Torres","987456321","Julio@hotmail.com","954128763","Martin");
insert into talumnoSolicitudRegistro values("A00015","S00015","contrasenia15","2021-07-23","Pedro","Perez","Ramos","9012345678","Pedro@hotmail.com","968421035","Fabricio");
insert into talumnoSolicitudRegistro values("A00016","S00016","contrasenia16","2021-07-23","Manuel","Lopez","Mamani","963258741","Manuel@hotmail.com","965874123","Pedro");
insert into talumnoSolicitudRegistro values("A00017","S00017","contrasenia17","2021-07-23","Juana","Vasquez","Rojas","931246578","Juana@hotmail.com","984262132","Ramon");
insert into talumnoSolicitudRegistro values("A00018","S00018","contrasenia18","2021-07-23","Santos","Huaman","Rodriguez","f987311440","Santos@hotmail.com","987412563","Leandro");
insert into talumnoSolicitudRegistro values("A00019","S00019","contrasenia19","2021-07-23","Jhon","Garcia","Sanchez","f987311440","Jhon@hotmail.com","987541263","Martin");
insert into talumnoSolicitudRegistro values("A00020","S00020","contrasenia20","2021-07-23","Diana","Flores","Quispe","f987311440","Diana@hotmail.com","98745684","Santiago");


-- tadministrador 2
insert into tadministrador values("AD0001","Marco","Perez","Casafranca","Marco@hotmail.com","985412364","Calle Suecia","2021-03-20");
insert into tadministrador values("AD0002","Juan","Quiñones","Pino","Juan@hotmail.com","985741236","Calle Lima","2021-03-21");
insert into tadministrador values("AD0003","Carlos","Cardenas","Quispe","Carlos@hotmail.com","987541236","Calle Recoleta","2021-03-30");
insert into tadministrador values("AD0004","Luis","Vela","Romero","Luis@hotmail.com","975841236","Av Sol","2021-04-9");
insert into tadministrador values("AD0005","Mateo","Martinez","Silva","Mateo@hotmail.com","986574125","3re Paradero San Sebastian","2021-04-11");
insert into tadministrador values("AD0006","Lucas","Tapia","Condori","Lucas@hotmail.com","963254125","Larapa","2021-04-12");
insert into tadministrador values("AD0007","Ernesto","Flores","Rivera","Ernesto@hotmail.com","974586123","Huancaro","2021-04-13");
insert into tadministrador values("AD0008","Marco","Fernandez","Bustamante","Marco@hotmail.com","931258746","Ovalo Pachacuteq","2021-04-14");
insert into tadministrador values("AD0009","Florentino","Quispe","Medina","Florentino@hotmail.com","974125478","Infancia","2021-04-15");
insert into tadministrador values("AD0010","Marco","Sanchez","Morales","Marco@hotmail.com","935687412","Av Los Incas","2021-04-15");
insert into tadministrador values("AD0011","Ezequiel","Rodriguez","Garcia","Ezequiel@hotmail.com","974521485","Calle Pera","2021-04-17");
insert into tadministrador values("AD0012","Gustavo","Rojas","Huaman","Gustavo@hotmail.com","902547852","Magisterio","2021-04-19");
insert into tadministrador values("AD0013","Julio","Mamani","Vasquez","Julio@hotmail.com","963405870","Marcavalle","2021-04-21");
insert into tadministrador values("AD0014","Cesar","Ramos","Lopez","Cesar@hotmail.com","974201456","Los Andes","2021-04-22");
insert into tadministrador values("AD0015","Fernando","Torres","Perez","Fernando@hotmail.com","975482036","Aprovite","2021-04-24");
insert into tadministrador values("AD0016","Fabian","Gonzales","Diaz","Fabian@hotmail.com","987025402","Plaza Regocijo","2021-04-25");
insert into tadministrador values("AD0017","Guillermo","Mendoza","Cruz","Guillermo@hotmail.com","912540368","Av Tupac Amaru","2021-04-26");
insert into tadministrador values("AD0018","Martin","Espinoza","Gomez","Martin@hotmail.com","974563201","Jiron Calca","2021-04-26");
insert into tadministrador values("AD0019","Nicolas","Gutierrez","Cordoba","Nicolas@hotmail.com","963214025","Calle Pardo","2021-04-27");
insert into tadministrador values("AD0020","Alberto","Ruiz","Castro","Alberto@hotmail.com","978541203","Marcavalle","2021-04-27");


-- tdocente 3
insert into tdocente values("D00001","AD0001","Juan","Barrio","Mendoza","982761745","juanB@gmail.com","Algebra","2020-05-01");
insert into tdocente values("D00002","AD0001","Pedro","Almanza","Loyola","982761745","pedroA@gmail.com","Fisica","2020-05-02");
insert into tdocente values("D00003","AD0001","Pablo","Rey","Sanchez","982761745","pabloR@gmail.com","Quimica","2020-05-03");
insert into tdocente values("D00004","AD0002","Carlos","Carvajal","Vargas","982761745","carlosC@gmail.com","Trigonometria","2020-05-04");
insert into tdocente values("D00005","AD0002","Ricardo","Acero","Caro","982761745","ricardoA@gmail.com","Razonamiento Matematico","2020-05-05");
insert into tdocente values("D00006","AD0003","Piero","Villa","Monroy","982761745","pieroM@gmail.com","Razonamiento Verbal","2020-01-01");
insert into tdocente values("D00007","AD0004","Agustin","Blanco","Quispe","982761745","agustinB@gmail.com","Algebra","2020-01-02");
insert into tdocente values("D00008","AD0005","Dayanna","Polanco","Ruiz","982761745","dayannaP@gmail.com","Fisica","2020-01-03");
insert into tdocente values("D00009","AD0005","Maria","Gomez","Rodriguez","982761745","mariaG@gmail.com","Quimica","2020-01-04");
insert into tdocente values("D00010","AD0005","Denisse","Polo","Castellanos","982761745","denisseP@gmail.com","Razonamiento Matematico","2020-01-05");
insert into tdocente values("D00011","AD0011","Stefany","Casta","Contreras","982761745","stefanyC@gmail.com","Razonamiento Verbal","2020-03-01");
insert into tdocente values("D00012","AD0012","Marco","Gomez","Gianine","982761745","marcoG@gmail.com","Algebra","2020-03-02");
insert into tdocente values("D00013","AD0013","Josimar","Suarique","Avila","982761745","josimarS@gmail.com","Fisica","2020-03-03");
insert into tdocente values("D00014","AD0014","Max","Lopez","Rodriguez","982761745","maxL@gmail.com","Quimica","2020-03-04");
insert into tdocente values("D00015","AD0015","Paolo","Forero","Peña","982761745","paoloF@gmail.com","Trigonometria","2020-03-05");
insert into tdocente values("D00016","AD0016","Monica","Vargas","Hermoza","982761745","monicaV@gmail.com","Matematica General","2020-07-01");
insert into tdocente values("D00017","AD0017","Hugo","Diaz","Beltran","982761745","hugoD@gmail.com","Algebra","2020-07-02");
insert into tdocente values("D00018","AD0006","Jose","Fino","Andrade","982761745","joseF@gmail.com","Geometria","2020-07-03");
insert into tdocente values("D00019","AD0003","Jair","Del rio","Barrios","982761745","jairD@gmail.com","Geometria","2020-07-03");
insert into tdocente values("D00020","AD0001","Ulises","Caceda","Barrios","982761745","ulisesC@gmail.com","Geometria","2020-07-05");

describe tcurso;
-- tcurso 4
insert into tcurso values("C00001","D00001","AD0001","Algebra1",12,"abel.xlmlp",50,"Este curso estudia fenomenos matematicos","pre-1"); 
insert into tcurso values("C00002","D00002","AD0001","Fisica1",12,"luis.xlmlp",50,"Este curso estudia las propiedades de la energía y la materia","pre-1"); 
insert into tcurso values("C00003","D00003","AD0001","Quimica1",12,"abel.xlmlp",50,"Este curso estudia fenomenos naturales","pre-1");
insert into tcurso values("C00004","D00004","AD0002","Trigonometria1",12,"Lucia.xlmlp",50,"Este curso estudia fenomenos naturales","pre-1"); 
insert into tcurso values("C00005","D00019","AD0002","Geometria1",12,"Fabiola.xlmlp",50,"Este curso estudia la comprensión de ecuaciones basicas","pre-1"); 
insert into tcurso values("C00006","D00010","AD0002","Razonamiento Matematico",12,"leonor.xlmlp",50,"Este curso estudia fenomenos naturales","pre-1");
insert into tcurso values("C00007","D00011","AD0001","Razonamiento Verbal",12,"alexander.xlmlp",50,"Este curso estudia las propiedades de la energía y materia","pre-1");
insert into tcurso values("C00008","D00010","AD0003","Razonamiento Matematico 2",12,"Lumar.xlmlp",50,"Este curso estudia la comprensión de ecuaciones basicas","pre-2"); 
insert into tcurso values("C00009","D00013","AD0004","Fisica2",12,"karina.xlmlp",50,"Este curso estudia las propiedades de la energía y la materia","pre-2"); 
insert into tcurso values("C00010","D00014","AD0003","Quimica2",12,"abel.xlmlp",50,"Este curso estudia fenomenos naturales","pre-2"); 
insert into tcurso values("C00011","D00013","AD0005","Fisica3",12,"josefina.xlmlp",50,"Este curso estudia las propiedades de la energía y materia","pre-3"); 
insert into tcurso values("C00012","D00014","AD0005","Quimica3",12,"abel.xlmlp",50,"Este curso estudia fenomenos naturales","pre-3");
insert into tcurso values("C00013","D00016","AD0005","Fisica4",12,"velia.xlmlp",50,"Este curso estudia las propiedades de la energía y la materia","pre-4"); 
insert into tcurso values("C00014","D00017","AD0006","Quimica4",12,"alberto.xlmlp",50,"Este curso estudia fenomenos naturales","pre-4"); 
insert into tcurso values("C00015","D00009","AD0001","Fisica1",12,"maria luisa.xlmlp",50,"Este curso estudia las propiedades de la energía y materia","pre-1");
insert into tcurso values("C00016","D00009","AD0006","Quimica2",12,"julio.xlmlp",50,"Este curso estudia fenomenos naturales","pre-2"); 
insert into tcurso values("C00017","D00009","AD0006","Fisica2",12,"antonio.xlmlp",50,"Este curso estudia las propiedades de la energía y la materia","pre-4"); 
insert into tcurso values("C00018","D00003","AD0001","QuimicaV",12,"david.xlmlp",50,"Este curso estudia fenomenos naturales","ciclo verano");
insert into tcurso values("C00019","D00005","AD0001","Razonamiento MatematicoV",50,"liana.xlmlp",50,"Este curso estudia la comprensión de ecuaciones basicas ","ciclo verano");
insert into tcurso values("C00020","D00008","AD0001","FisicaV",12,"maria.xlmlp",50,"Este curso estudia las propiedades de la energía y materia","ciclo verano");
insert into tcurso values("C00021","D00012","AD0001","AlgebraV",12,"david.xlmlp",50,"Este curso estudia fenomenos naturales","ciclo verano");

-- tinscripcionHorario 5
insert into tinscripcionHorario values("I00001","A00001","H00001","Contado","ciclo verano");
insert into tinscripcionHorario values("I00002","A00002","H00002","Contado","ciclo verano");
insert into tinscripcionHorario values("I00003","A00003","H00003","Entidad Bancaria","ciclo verano"); 
insert into tinscripcionHorario values("I00004","A00004","H00004","Contado","ciclo verano");
insert into tinscripcionHorario values("I00005","A00005","H00005","Entidad Bancaria","ciclo verano");
insert into tinscripcionHorario values("I00006","A00006","H00006","Entidad Bancaria","ciclo verano");
insert into tinscripcionHorario values("I00007","A00007","H00007","Contado","ciclo verano");
insert into tinscripcionHorario values("I00008","A00008","H00008","Contado","pre-1");
insert into tinscripcionHorario values("I00009","A00009","H00009","Entidad Bancaria","pre-1");
insert into tinscripcionHorario values("I00010","A00010","H00010","Entidad Bancaria","pre-1");
insert into tinscripcionHorario values("I00011","A00011","H00011","Entidad Bancaria","pre-1");
insert into tinscripcionHorario values("I00012","A00012","H00012","Contado","pre-1");
insert into tinscripcionHorario values("I00013","A00013","H00013","Contado","pre-2");
insert into tinscripcionHorario values("I00014","A00014","H00014","Contado","pre-2");
insert into tinscripcionHorario values("I00015","A00015","H00015","Entidad Bancaria","pre-2");
insert into tinscripcionHorario values("I00016","A00019","H00016","Contado","pre-2");
insert into tinscripcionHorario values("I00017","A00017","H00017","Contado","pre-2");
insert into tinscripcionHorario values("I00018","A00018","H00018","Contado","ciclo verano");
insert into tinscripcionHorario values("I00019","A00016","H00019","Entidad Bancaria","ciclo verano");
insert into tinscripcionHorario values("I00020","A00020","H00020","Entidad Bancaria","ciclo verano");

-- tentidadBancaria 6
insert into tentidadBancaria values("B00001","Banco de Crédito del Perú","Magisterio 102","084578612","20100047218");
insert into tentidadBancaria values("B00002","Banco de Comercio","Mariscal Gamarra 26","084578235","20100047211");
insert into tentidadBancaria values("B00003","Banco Interamericano de Finanzas","Independencia 12","045578695","20100047212");
insert into tentidadBancaria values("B00004","Banco Pichincha","BellaVista 102","084571295","20100023213");
insert into tentidadBancaria values("B00005","BBVA","Av. Del Pacifico 102","084578175","20100047218");
insert into tentidadBancaria values("B00006","Citibank Perú","Jiron Union 102","082378695","20100047216");
insert into tentidadBancaria values("B00007","Interbank","Av. Peru 41","084545695","20100047218");
insert into tentidadBancaria values("B00008","MiBanco","Av. Comandantes 102","0845715695","20100047219");
insert into tentidadBancaria values("B00009","Scotiabank Perú","Ejercito 102","084575695","20100047212");
insert into tentidadBancaria values("B00010","Banco GNB Perú","Av. Sol 102","084278235","20100047238");
insert into tentidadBancaria values("B00011","Banco Falabella","Av. de la Marina 102","0816578695","20230047218");
insert into tentidadBancaria values("B00012","Banco Ripley"," 102","084577395","20100042618");
insert into tentidadBancaria values("B00013","Banco Santander Perú","Magisterio 16","084518695","20100047298");
insert into tentidadBancaria values("B00014","Banco Azteca","Jiron Ladrillos 102","084571895","20100012218");
insert into tentidadBancaria values("B00015","Bank of China","Magisterio 125","084571895","20101247218");
insert into tentidadBancaria values("B00016","Cencosud Scotia","Av. Comandantes 2","084238695","20100327218");
insert into tentidadBancaria values("B00017","ICBC PERU BANK","Magisterio 26","084572965","20100044718");
insert into tentidadBancaria values("B00018","Agrobanco","Av. Peru 41","084572395","20100040918");
insert into tentidadBancaria values("B00019","Banco de la Nación","BellaVista 102","084516895","20112347218");
insert into tentidadBancaria values("B00020","COFIDE","Magisterio 20","084124395","20100040638");

-- tpago 7
insert into tpago values("P00001","I00001","AD0001",null,null,"2021-01-12");
insert into tpago values("P00002","I00002","AD0001",null,null,"2021-05-12");
insert into tpago values("P00003","I00003",null,"B00001",null,"2021-08-12");
insert into tpago values("P00004","I00004","AD0002",null,null,"2021-05-23");
insert into tpago values("P00005","I00005",null,"B00001",null,"2021-04-12");
insert into tpago values("P00006","I00006",null,"B00002",null,"2021-08-11");
insert into tpago values("P00007","I00007","AD0001",null,null,"2021-11-18");
insert into tpago values("P00008","I00008","AD0002",null,null,"2021-10-21");
insert into tpago values("P00009","I00009",null,"B00001",null,"2021-05-30");
insert into tpago values("P00010","I00010",null,"B00001",null,"2021-08-20");
insert into tpago values("P00011","I00011",null,"B00003",null,"2021-12-15");
insert into tpago values("P00012","I00012","AD0001",null,null,"2021-05-25");
insert into tpago values("P00013","I00013","AD0001",null,null,"2021-12-26");
insert into tpago values("P00014","I00014","AD0002",null,null,"2021-08-30");
insert into tpago values("P00015","I00015",null,"B00003",null,"2021-03-02");
insert into tpago values("P00016","I00016","AD0004",null,null,"2021-01-03");
insert into tpago values("P00017","I00017","AD0004",null,null,"2021-02-03");
insert into tpago values("P00018","I00018","AD0001",null,null,"2021-06-20");
insert into tpago values("P00019","I00019",null,"B00001",null,"2021-09-25");
insert into tpago values("P00020","I00020",null,"B00002",null,"2021-11-20");



-- tcomprobante 8
insert into tcomprobante values("S00001","P00001","20600979531",NULL,"Juana Malaguero");
insert into tcomprobante values("S00002","P00002","20600979531",NULL,"Juan Arrozpide");
insert into tcomprobante values("S00003","P00003","20600979531",NULL,"Dario Juvenal");
insert into tcomprobante values("S00004","P00004","20600979531",NULL,"Sandro Quinte");
insert into tcomprobante values("S00005","P00005","20600979531",NULL,"Juan Salinas");
insert into tcomprobante values("S00006","P00006","20600979531",NULL,"Gonzalo Velasco");
insert into tcomprobante values("S00007","P00007","20600979531",NULL,"Piero Ordoñez");
insert into tcomprobante values("S00008","P00008","20600979531",NULL,"Antonio Martinez");
insert into tcomprobante values("S00009","P00009","20600979531",NULL,"Diego Villafuerte");
insert into tcomprobante values("S00010","P00010","20600979531",NULL,"Jean Iturriaga");
insert into tcomprobante values("S00011","P00011","20600979531",NULL,"Juana Martinez");
insert into tcomprobante values("S00012","P00012","20600979531",NULL,"Diego Serna");
insert into tcomprobante values("S00013","P00013","20600979531",NULL,"Pedro Iglesias");
insert into tcomprobante values("S00014","P00014","20600979531",NULL,"Andres Beltran");
insert into tcomprobante values("S00015","P00015","20600979531",NULL,"Luis Lucana");
insert into tcomprobante values("S00016","P00016","20600979531",NULL,"Andrea Mamani");
insert into tcomprobante values("S00017","P00017","20600979531",NULL,"Diego Quispe");
insert into tcomprobante values("S00018","P00018","20600979531",NULL,"Marta Perez");
insert into tcomprobante values("S00019","P00019","20600979531",NULL,"Susan Delgado");
insert into tcomprobante values("S00020","P00020","20600979531",NULL,"Francisco Estigarribia");



-- tinscripcionCurso 9
insert into tinscripcionCurso values("IC0001","I00001","C00019");
insert into tinscripcionCurso values("IC0002","I00001","C00020");
insert into tinscripcionCurso values("IC0003","I00001","C00021");
insert into tinscripcionCurso values("IC0004","I00002","C00018");
insert into tinscripcionCurso values("IC0005","I00002","C00021");
insert into tinscripcionCurso values("IC0006","I00002","C00019");
insert into tinscripcionCurso values("IC0007","I00003","C00019");
insert into tinscripcionCurso values("IC0008","I00003","C00021");
insert into tinscripcionCurso values("IC0009","I00003","C00020");
insert into tinscripcionCurso values("IC0010","I00004","C00021");
insert into tinscripcionCurso values("IC0012","I00004","C00020");
insert into tinscripcionCurso values("IC0013","I00004","C00019");
insert into tinscripcionCurso values("IC0014","I00008","C00005");
insert into tinscripcionCurso values("IC0015","I00008","C00006");
insert into tinscripcionCurso values("IC0016","I00008","C00007");
insert into tinscripcionCurso values("IC0017","I00009","C00015");
insert into tinscripcionCurso values("IC0018","I00009","C00007");
insert into tinscripcionCurso values("IC0019","I00009","C00005");
insert into tinscripcionCurso values("IC0020","I00013","C00008");
insert into tinscripcionCurso values("IC0021","I00013","C00009");


-- tregistroAcademico 10
insert into tregistroAcademico values ("R00001","I00001","ciclo verano");
insert into tregistroAcademico values ("R00002","I00002","ciclo verano");
insert into tregistroAcademico values ("R00003","I00003","ciclo verano");
insert into tregistroAcademico values ("R00004","I00004","ciclo verano");
insert into tregistroAcademico values ("R00005","I00005","ciclo verano");
insert into tregistroAcademico values ("R00006","I00006","ciclo verano");
insert into tregistroAcademico values ("R00007","I00007","ciclo verano");
insert into tregistroAcademico values ("R00008","I00008","pre-1");
insert into tregistroAcademico values ("R00009","I00009","pre-1");
insert into tregistroAcademico values ("R00010","I00010","pre-1");
insert into tregistroAcademico values ("R00011","I00011","pre-1");
insert into tregistroAcademico values ("R00012","I00012","pre-1");
insert into tregistroAcademico values ("R00013","I00013","pre-2");
insert into tregistroAcademico values ("R00014","I00014","pre-2");
insert into tregistroAcademico values ("R00015","I00015","pre-2");
insert into tregistroAcademico values ("R00016","I00016","pre-2");
insert into tregistroAcademico values ("R00017","I00017","pre-2");
insert into tregistroAcademico values ("R00018","I00018","pre-2");
insert into tregistroAcademico values ("R00019","I00019","ciclo verano");
insert into tregistroAcademico values ("R00020","I00020","ciclo verano");


-- tregistroAsistencia 11
insert into tregistroAsistencia values("RA0001","R00001","2012-03-05",True);
insert into tregistroAsistencia values("RA0002","R00001","2012-03-06",False);
insert into tregistroAsistencia values("RA0003","R00001","2012-03-07",True);
insert into tregistroAsistencia values("RA0004","R00002","2012-03-08",False);
insert into tregistroAsistencia values("RA0005","R00002","2012-03-09",True);
insert into tregistroAsistencia values("RA0006","R00002","2012-03-10",False);
insert into tregistroAsistencia values("RA0007","R00003","2012-03-11",True);
insert into tregistroAsistencia values("RA0008","R00003","2012-03-12",False);
insert into tregistroAsistencia values("RA0009","R00003","2012-03-13",False);
insert into tregistroAsistencia values("RA0010","R00004","2012-03-14",True);
insert into tregistroAsistencia values("RA0011","R00004","2012-03-15",True);
insert into tregistroAsistencia values("RA0012","R00004","2012-03-16",False);
insert into tregistroAsistencia values("RA0013","R00008","2012-03-17",True);
insert into tregistroAsistencia values("RA0014","R00008","2012-03-18",False);
insert into tregistroAsistencia values("RA0015","R00008","2012-03-19",True);
insert into tregistroAsistencia values("RA0016","R00008","2012-03-20",False);
insert into tregistroAsistencia values("RA0017","R00009","2012-03-21",True);
insert into tregistroAsistencia values("RA0018","R00009","2012-03-22",False);
insert into tregistroAsistencia values("RA0019","R00009","2012-03-23",True);
insert into tregistroAsistencia values("RA0020","R00013","2012-03-24",False);




-- tregistroNota 12
insert into tregistroNota values("RN0001","R00001","1","10.0","2021-06-23");
insert into tregistroNota values("RN0002","R00001","1","12.4","2021-06-24");
insert into tregistroNota values("RN0003","R00001","1","15.8","2021-06-25");
insert into tregistroNota values("RN0004","R00002","1","14.7","2021-06-26");
insert into tregistroNota values("RN0005","R00002","2","11.0","2021-06-27");
insert into tregistroNota values("RN0006","R00002","1","15.2","2021-06-28");
insert into tregistroNota values("RN0007","R00003","1","16.0","2021-06-29");
insert into tregistroNota values("RN0008","R00003","2","14.8","2021-06-30");
insert into tregistroNota values("RN0009","R00003","3","11.2","2021-07-01");
insert into tregistroNota values("RN0010","R00004","1","10.0","2021-07-02");
insert into tregistroNota values("RN0011","R00004","1","12.4","2021-07-03");
insert into tregistroNota values("RN0012","R00008","1","15.8","2021-07-04");
insert into tregistroNota values("RN0013","R00008","1","15.5","2021-07-05");
insert into tregistroNota values("RN0014","R00008","1","11.9","2021-07-06");
insert into tregistroNota values("RN0015","R00009","1","20.0","2021-07-07");
insert into tregistroNota values("RN0016","R00009","2","17.2","2021-07-08");
insert into tregistroNota values("RN0017","R00009","3","18.3","2021-07-09");
insert into tregistroNota values("RN0018","R00013","1","17.8","2021-07-10");
insert into tregistroNota values("RN0019","R00013","2","19.8","2021-07-11");
insert into tregistroNota values("RN0020","R00013","1","07.8","2021-07-12");



-- tcursoRegistroNota 13
insert into tcursoRegistroNota values("CRN001","RN0001","C00019");
insert into tcursoRegistroNota values("CRN002","RN0002","C00020");
insert into tcursoRegistroNota values("CRN003","RN0003","C00021");
insert into tcursoRegistroNota values("CRN004","RN0004","C00016");
insert into tcursoRegistroNota values("CRN005","RN0005","C00016");
insert into tcursoRegistroNota values("CRN006","RN0006","C00019");
insert into tcursoRegistroNota values("CRN007","RN0007","C00021");
insert into tcursoRegistroNota values("CRN008","RN0008","C00021");
insert into tcursoRegistroNota values("CRN009","RN0009","C00021");
insert into tcursoRegistroNota values("CRN010","RN0010","C00020");
insert into tcursoRegistroNota values("CRN011","RN0011","C00019");
insert into tcursoRegistroNota values("CRN012","RN0012","C00005");
insert into tcursoRegistroNota values("CRN013","RN0013","C00006");
insert into tcursoRegistroNota values("CRN014","RN0014","C00007");
insert into tcursoRegistroNota values("CRN015","RN0015","C00015");
insert into tcursoRegistroNota values("CRN016","RN0016","C00015");
insert into tcursoRegistroNota values("CRN017","RN0017","C00015");
insert into tcursoRegistroNota values("CRN018","RN0018","C00008");
insert into tcursoRegistroNota values("CRN019","RN0019","C00008");
insert into tcursoRegistroNota values("CRN020","RN0020","C00009");


-- tcursoRegistroAsistencia 14
insert into tcursoRegistroAsistencia values("CRA001","C00019","RA0001"); 
insert into tcursoRegistroAsistencia values("CRA002","C00020","RA0002"); 
insert into tcursoRegistroAsistencia values("CRA003","C00021","RA0003"); 
insert into tcursoRegistroAsistencia values("CRA004","C00018","RA0004"); 
insert into tcursoRegistroAsistencia values("CRA005","C00021","RA0005"); 
insert into tcursoRegistroAsistencia values("CRA006","C00019","RA0006"); 
insert into tcursoRegistroAsistencia values("CRA007","C00019","RA0007");
insert into tcursoRegistroAsistencia values("CRA008","C00021","RA0008"); 
insert into tcursoRegistroAsistencia values("CRA009","C00020","RA0009"); 
insert into tcursoRegistroAsistencia values("CRA010","C00021","RA0010"); 
insert into tcursoRegistroAsistencia values("CRA011","C00020","RA0011"); 
insert into tcursoRegistroAsistencia values("CRA012","C00019","RA0012"); 
insert into tcursoRegistroAsistencia values("CRA013","C00005","RA0013"); 
insert into tcursoRegistroAsistencia values("CRA014","C00006","RA0014");
insert into tcursoRegistroAsistencia values("CRA015","C00007","RA0015"); 
insert into tcursoRegistroAsistencia values("CRA016","C00015","RA0016"); 
insert into tcursoRegistroAsistencia values("CRA017","C00007","RA0017"); 
insert into tcursoRegistroAsistencia values("CRA018","C00005","RA0018"); 
insert into tcursoRegistroAsistencia values("CRA019","C00008","RA0019");
insert into tcursoRegistroAsistencia values("CRA020","C00009","RA0020");

-- tcursoDiaHoraSesion 15
insert into tcursoDiaHoraSesion values("CS0001","C00001","Martes","18:00:00","17:00:00"); 
insert into tcursoDiaHoraSesion values("CS0002","C00001","Jueves","19:00:00","20:00:00"); 
insert into tcursoDiaHoraSesion values("CS0003","C00003","Viernes","15:00:00","16:00:00"); 
insert into tcursoDiaHoraSesion values("CS0004","C00004","Lunes","11:00:00","13:00:00");
insert into tcursoDiaHoraSesion values("CS0005","C00005","Miercoles","07:00:00","09:00:00"); 
insert into tcursoDiaHoraSesion values("CS0006","C00006","Martes","11:00:00","13:00:00"); 
insert into tcursoDiaHoraSesion values("CS0007","C00007","Lunes","15:00:00","17:00:00");
insert into tcursoDiaHoraSesion values("CS0008","C00008","Martes","14:00:00","15:00:00"); 
insert into tcursoDiaHoraSesion values("CS0009","C00009","Lunes","19:30:00","20:30:00"); 
insert into tcursoDiaHoraSesion values("CS0010","C00010","Viernes","15:00:00","16:00:00"); 
insert into tcursoDiaHoraSesion values("CS0011","C00011","Lunes","11:00:00","12:00:00");
insert into tcursoDiaHoraSesion values("CS0012","C00012","Miercoles","08:00:00","09:00:00"); 
insert into tcursoDiaHoraSesion values("CS0013","C00013","Martes","16:00:00","18:00:00"); 
insert into tcursoDiaHoraSesion values("CS0014","C00014","Lunes","15:00:00","17:00:00"); 
insert into tcursoDiaHoraSesion values("CS0015","C00015","Martes","18:30:00","19:30:00");  
insert into tcursoDiaHoraSesion values("CS0016","C00016","Jueves","08:00:00","10:00:00");  
insert into tcursoDiaHoraSesion values("CS0017","C00017","Viernes","15:30:00","16:30:00");  
insert into tcursoDiaHoraSesion values("CS0018","C00018","Lunes","17:00:00","19:00:00"); 
insert into tcursoDiaHoraSesion values("CS0019","C00019","Miercoles","07:00:00","08:00:00");  
insert into tcursoDiaHoraSesion values("CS0020","C00020","Martes","13:00:00","14:00:00"); 
insert into tcursoDiaHoraSesion values("CS0021","C00021","Martes","20:00:00","21:00:00");
insert into tcursoDiaHoraSesion values("CS0022","C00021","Jueves","19:00:00","20:00:00"); 

-- Mostrar las tablas
Select * from talumnoSolicitudRegistro;
Select * from tadministrador;
Select * from tdocente;
Select * from tcurso;
Select * from tinscripcionHorario;
Select * from tpago;
Select * from tcomprobante;
Select * from tentidadBancaria;
Select * from tinscripcionCurso;
Select * from tregistroAcademico;
Select * from tregistroAsistencia;
Select * from tregistroNota;
Select * from tcursoRegistroNota;
Select * from tcursoRegistroAsistencia;
Select * from tcursoDiaHoraSesion;


-- -----------------------CONSULTAS PRUEBA 2.0 ------------------------------
-- Ver las notas de un determinado alumno
Select ta.Nombre, trn.Nota, trn.NumeroExamen, trn.FechaRegistro, tc.NombreCurso, tins.Ciclo
	FROM talumnoSolicitudRegistro ta
		JOIN tinscripcionHorario tins ON ta.IdAlumno = tins.IdAlumno
        JOIN tregistroAcademico tr ON tins.IdInscripcion = tr.IdInscripcion
        JOIN tregistroNota trn ON tr.IdRegistro = trn.IdRegistro
        JOIN tcursoRegistroNota tcr ON trn.IdRegistroNota = tcr.IdRegistroNota
        JOIN tcurso tc ON tcr.IdCurso = tc.IdCurso
		WHERE ta.Nombre like 'Daniel';

-- Mostrar los nombres de todos los alumnos registrados en el sistema esten o no inscritos
Select tal.nombre 
	FROM tinscripcionHorario ti
		JOIN talumnoSolicitudRegistro tal ON ti.IdAlumno = tal.IdAlumno;


-- Mostrar los administradores que validaron pagos y de que alumno
Select  tad.nombre, tad.IdAdministrador, tp.fechaDePago
	FROM tpago tp
		JOIN tadministrador tad ON tp.IdAdministrador = tad.IdAdministrador;


-- Lista de pagos validados por un determinado administrador segun ID (4)
Select  tal.IdAlumno, tal.Nombre AS NombreAlumno, tal.ApellidoPaterno, tins.Ciclo, tad.nombre AS NombreAdministrador, tad.IdAdministrador, SUM(tc.CostoCurso) AS MontoTotal, tp.fechaDePago
	FROM tadministrador tad
		JOIN tpago tp ON tad.IdAdministrador = tp.IdAdministrador
        JOIN tinscripcionHorario tins ON tp.IdInscripcion = tins.IdInscripcion
        JOIN tinscripcionCurso tinsc ON tins.IdInscripcion = tinsc.IdInscripcion
        JOIN tcurso tc ON tinsc.IdCurso = tc.IdCurso
        JOIN talumnoSolicitudRegistro tal ON tins.IdAlumno = tal.IdAlumno
        WHERE tad.IdAdministrador = 'AD0001'
        GROUP BY tal.ApellidoPaterno; 

        

-- Mostrar los alumnos que registraron sus respectivos pagos, la fecha y el ciclo al cual se inscribieron aniadimos el comprobante y el monto total (3) -> (6)
Select tal.IdAlumno ,tal.Nombre AS NombreAlumno, tal.ApellidoPaterno, tp.IdPago, tins.Ciclo, tc.CostoCurso AS CostoPorCurso,tc.NombreCurso, tcomp.RUC, tp.FechaDePago, tcomp.NumeroDeSerie AS SerieComprobante, tcomp.Cliente AS ClienteRealizoPago
	FROM talumnoSolicitudRegistro tal
		JOIN tinscripcionhorario tins ON tal.IdAlumno = tins.IdAlumno
        JOIN tinscripcionCurso tinsc ON tins.IdInscripcion = tinsc.IdInscripcion
        JOIN tcurso tc ON tinsc.IdCurso = tc.IdCurso
        JOIN tpago tp ON tins.IdInscripcion = tp.IdInscripcion
        JOIN tcomprobante tcomp ON tp.IdPago = tcomp.IdPago
        Order by tal.IdAlumno;
        -- GROUP BY tal.IdAlumno;
        
-- Consulta para validar la consulta anterior 
-- Mostrar los cursos en los que un alumno se encuentra inscrito (5)
Select tal.IdAlumno, tal.Nombre AS NombreAlumno, tc.NombreCurso, tc.CostoCurso, tins.Ciclo, tp.FechaDePago AS FechaInscripcion
	FROM talumnoSolicitudRegistro tal 
		JOIN tinscripcionHorario tins ON tal.IdAlumno = tins.IdAlumno
        JOIN tinscripcionCurso tinsc ON tins.IdInscripcion = tinsc.IdInscripcion
        JOIN tcurso tc ON tinsc.IdCurso = tc.IdCurso
        JOIN tpago tp ON tins.IdInscripcion = tp.IdInscripcion
        Where tal.IdAlumno = 'A00001';








-- Lista de nombres de cursos con respectivos docentes a cargo (2)
Select tcu.NombreCurso, tdo.Nombre AS DocenteResponsable
	FROM tcurso tcu
		JOIN tdocente tdo ON tcu.IdDocente = tdo.IdDocente;


        


-- Obtener el nombre de los cursos que dictan en el ciclo vacacional, su horario y su descripcion
Select Distinct tc.NombreCurso, tc.IdCurso, tc.cicloCurso, tc.Descripcion, tcdh.DiaSesion, tcdh.HoraInicio, tcdh.HoraFinal
	FROM tcurso tc
		JOIN tcursoDiaHoraSesion tcdh ON tc.IdCurso = tcdh.IdCurso 
		WHERE tc.cicloCurso LIKE "%verano%";











-- -----------------------CONSULTAS DE PRUEBA-----------------------------------
-- Quiero saber a que cursos  mi hijo se puede inscribir en el ciclo de reforzamiento segundo secundaria y obtener su descripcion
Select tc.NombreCurso, tc.cicloCurso, tc.Descripcion
	FROM tcurso tc
		WHERE tc.cicloCurso LIKE "Reforzamiento Segundo Secundaria";
        
-- Quiero saber los cursos que dicatan en el ciclo de reforzamiento obtener su descripcion
Select tc.NombreCurso, tc.cicloCurso, tc.Descripcion
	FROM tcurso tc
		WHERE tc.cicloCurso LIKE "%Reforzamiento%";
        
-- Mostrar los alumnos matriculados en el ciclo de verano



-- ----------------------CONSULTAS DE PRUEBA-----------------------------------


--
-- Consultas Para presentacion
--

-- Mostrar los alumnos que tiene asignado un docente con su respectivo curso (ADICIONAL 5 TABLAS)
Select tal.Nombre, tdoc.Nombre, tc.NombreCurso
	FROM  talumnoSolicitudRegistro tal
		JOIN tinscripcionHorario tins ON tal.IdAlumno = tins.IdAlumno
        JOIN tinscripcionCurso tinsc ON tins.IdInscripcion = tinsc.IdInscripcion
        JOIN tcurso tc ON tinsc.IdCurso = tc.IdCurso
        JOIN tdocente tdoc ON tc.IdDocente = tdoc.IdDocente
        Where tdoc.Nombre LIKE "Jose";
        


--  Verificar quienes realizaron su pago de inscripcion por medio de entidad bancaria, a que ciclo y en que fecha (3 tablas)
Select tal.Nombre, tal.ApellidoPaterno, tp.IdAdministrador AS IdAdministradorValidoPago, tp.MontoTotal, tp.fechaDePago, tins.Ciclo
	FROM talumnoSolicitudRegistro tal
		JOIN tinscripcionHorario tins ON tal.IdAlumno = tins.IdAlumno
        JOIN tpago tp ON tins.IdInscripcion = tp.IdInscripcion
        Where tp.IdAdministrador IS NOT NULL;


-- Mostrar las notas de todos los alumno en el ciclo de verano (vacacional)  (4 tablas)
Select tal.Nombre, tal.ApellidoPaterno, tal.ApellidoMaterno, tins.Ciclo, trn.Nota, tc.NombreCurso, trn.NumeroExamen
	FROM talumnoSolicitudRegistro tal
		JOIN tinscripcionHorario tins ON tal.IdAlumno = tins.IdAlumno
        JOIN tregistroAcademico treg ON tins.IdInscripcion = treg.IdInscripcion
        JOIN tregistroNota trn ON treg.IdRegistro = trn.IdRegistro
        JOIN tcursoRegistroNota tcrn ON trn.IdRegistroNota = trn.IdRegistroNota
        JOIN tcurso tc ON tcrn.IdCurso = tc.IdCurso
        WHERE tins.Ciclo LIKE 'Vacacional';


-- Mostrar los docente que fueron agregados por un determinado administrador (Daniel) Y en que fecha fueron agregados (2 tablas)
Select tdoc.Nombre AS NombreDocente, tdoc.ApellidoPaterno, tdoc.Correo, tadm.Nombre AS NombreAdministradorResponsable, tadm.IdAdministrador AS CodigoAdministrador, tdoc.FechaDeRegistro AS FechaRegistroDocente
	FROM tadministrador tadm
		JOIN tdocente tdoc ON tadm.IdAdministrador = tdoc.IdAdministrador
        WHERE tadm.Nombre LIKE "Daniel";

-- Mostrar la informacion de un alumno por su ID
-- Mostrar la informacion de un docente por su ID
-- Mostrar la informacion de un administrador por su ID


