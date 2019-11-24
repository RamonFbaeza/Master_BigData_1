CREATE TABLE Institutos(Nombre_Inst CHAR(35), Area CHAR(35), Plazas INTEGER, PRIMARY KEY (Nombre_Inst), UNIQUE (Nombre_Inst));
CREATE TABLE Estudiantes(ID INTEGER, Nombre_Est CHAR(35), Puntos REAL, Valor INTEGER,PRIMARY KEY ( ID ),UNIQUE ( ID ) );
CREATE TABLE Solicitudes(ID INTEGER, Nombre_Inst CHAR(35), Via CHAR(35), Decision CHAR(35),PRIMARY KEY ( ID, Nombre_Inst, Via ),
FOREIGN KEY ( ID ) REFERENCES Estudiantes ( ID ), FOREIGN KEY ( Nombre_Inst ) REFERENCES Institutos ( Nombre_Inst ), UNIQUE ( ID, Nombre_Inst, Via ) );
# Este comentario es un cambio que hemos hecho en el fichero SQL desde la Rama de Prueba
