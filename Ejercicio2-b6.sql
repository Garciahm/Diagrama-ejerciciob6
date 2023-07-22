CREATE TABLE Clientes (
	IDdelcliente SERIAL PRIMARY KEY,
	Nombre VARCHAR (150) NOT NULL, 	
	Dirección VARCHAR (150) NOT NULL,
	Email VARCHAR (150) UNIQUE NOT NULL
);

CREATE TABLE Procuradores (
	IDprocurador SERIAL PRIMARY KEY,
	nombre VARCHAR (150) NOT NULL, 	
	Dirección VARCHAR (150) NOT NULL,
	teléfono VARCHAR (150) NOT NULL
);

CREATE TABLE Asuntos (
	IDexpediente serial PRIMARY KEY,
	IDdelcliente INT NOT NULL,
	FOREIGN KEY (IDdelcliente) REFERENCES Clientes(IDdelcliente),
	Fechadeinicio VARCHAR (150)NOT NULL,
	Fechadearchivo VARCHAR (150)NOT NULL,
	Estadodelasunto VARCHAR (150) NOT NULL
);

CREATE TABLE Asuntos_procuradores (
	IDexpediente INT NOT NULL,
	FOREIGN KEY (IDexpediente) REFERENCES Asuntos(IDexpediente),
	IDprocurador INT NOT NULL,
	FOREIGN KEY (IDprocurador) REFERENCES Procuradores(IDprocurador)
);
