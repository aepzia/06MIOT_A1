
CREATE SCHEMA suptech;
CREATE DOMAIN suptech.licencia_cuenta AS character varying(15) 
		  CHECK (VALUE IN ('free', 'basic', 'premium'));
CREATE TABLE suptech.cuenta (
    cif character varying(9),
    nombre character varying(255) NOT NULL,
    licencia suptech.licencia_cuenta NOT NULL,
	CONSTRAINT pk_cuenta PRIMARY KEY (cif)
);

CREATE TABLE suptech.entorno (
    id serial NOT NULL,
    cuenta_id character varying(9) NOT NULL,
	CONSTRAINT PK_entorno PRIMARY KEY(id),
    CONSTRAINT FK_Entorno_Cuenta FOREIGN KEY (cuenta_id) REFERENCES suptech.cuenta(cif)
	                                                     ON DELETE CASCADE
	                                                     ON UPDATE CASCADE
);

CREATE DOMAIN suptech.rol_terapeuta AS character varying(15) 
		  CHECK (VALUE IN ('admin', 'regular'));
		  
CREATE TABLE suptech.terapeuta (
    dni character varying(9) NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    rol suptech.rol_terapeuta NOT NULL,
    cuenta_id character varying(9) NOT NULL,
    CONSTRAINT PK_terapeuta PRIMARY KEY (dni),
    CONSTRAINT FK_terapeuta_cuenta FOREIGN KEY (cuenta_id) REFERENCES suptech.cuenta(cif)  
	                                                       ON DELETE CASCADE
														   ON UPDATE CASCADE
);


CREATE TABLE suptech.usuario (
    dni character varying(9) NOT NULL,
    nombre character varying(255)  NOT NULL,
    apellido character varying(255) NOT NULL,
    edad integer NOT NULL,
    cuenta_id character varying (9) NOT NULL,
    CONSTRAINT PK_usuario PRIMARY KEY (dni),
    CONSTRAINT FK_usuario_cuenta FOREIGN KEY (cuenta_id) REFERENCES suptech.cuenta (cif)
	                                                     ON DELETE CASCADE
														 ON UPDATE CASCADE
);

CREATE TABLE suptech.actividad (
    id serial,
    descripcion character varying(255) NOT NULL,
    entorno_id integer NOT NULL,
	CONSTRAINT pk_actividad PRIMARY KEY (id),
    CONSTRAINT FK_Actividad_Entorno FOREIGN KEY (entorno_id) REFERENCES suptech.entorno (id)  
															ON DELETE CASCADE
															ON UPDATE CASCADE
);
CREATE DOMAIN suptech.tipo_dispositivo AS character varying(15) 
		  CHECK (VALUE IN ('Sensor', 'Actuador'));
CREATE TABLE suptech.dispositivo (
    id serial,
    marca character varying (255) NOT NULL,
    tipo suptech.tipo_dispositivo NOT NULL,
    descripcion character varying(255) NOT NULL,
	entorno_id integer NOT NULL,
	CONSTRAINT pk_dispositivo PRIMARY KEY (id),
    CONSTRAINT FK_Dispositivo_Entorno FOREIGN KEY (entorno_id) REFERENCES suptech.entorno (id)  
																ON DELETE CASCADE
																ON UPDATE CASCADE
);

CREATE DOMAIN suptech.tipo_capacidad AS character varying(15) 
		  CHECK (VALUE IN ('sensorial', 'motriz', 'intelectual'));

CREATE TABLE suptech.capacidad (
    id serial,
    tipo suptech.tipo_capacidad NOT NULL,
    descripcion character varying(255) NOT NULL,
	actividad_id integer NOT NULL,
    CONSTRAINT PK_Capacidad PRIMARY KEY (id),
    CONSTRAINT FK_Capacidad_Actividad FOREIGN KEY (actividad_id) REFERENCES suptech.actividad (id)  
																ON DELETE CASCADE
																ON UPDATE CASCADE
);

CREATE TABLE suptech.tiene_asignado (
    terapeuta_id character varying(9) NOT NULL,
    usuario_id character varying(9) NOT NULL,
    CONSTRAINT PK_UsuarioTerapeuta PRIMARY KEY (terapeuta_id, usuario_id),
    CONSTRAINT FK_UsuarioTerapeuta_Terapauta_TerapeutaId FOREIGN KEY (terapeuta_id) REFERENCES suptech.terapeuta(dni) ON DELETE CASCADE,
    CONSTRAINT FK_UsuarioTerapeuta_Usuario_UsuarioId FOREIGN KEY (usuario_id) REFERENCES suptech.usuario(dni) ON DELETE CASCADE
);

CREATE TABLE suptech.lleva_a_cabo (
    actividad_id integer NOT NULL,
    usuario_id character varying(9) NOT NULL,
    CONSTRAINT PK_UsuarioActividad PRIMARY KEY (actividad_id, usuario_id),
    CONSTRAINT FK_UsuarioActividad_Actividad_ActividadId FOREIGN KEY (actividad_id) REFERENCES suptech.actividad (id) ON DELETE CASCADE,
    CONSTRAINT FK_UsuarioActividad_Usuario_UsuarioId FOREIGN KEY (usuario_id) REFERENCES suptech.usuario (dni) ON DELETE CASCADE
);

CREATE TABLE suptech.use (
    actividad_id integer NOT NULL,
    dispositivo_id integer NOT NULL,
    CONSTRAINT PK_DispositivoActividad PRIMARY KEY (actividad_id, dispositivo_id),
    CONSTRAINT FK_DispositivoActividad_Actividad_ActividadId FOREIGN KEY (actividad_id) REFERENCES suptech.actividad (id) ON DELETE CASCADE,
    CONSTRAINT FK_DispositivoActividad_Dispositivo_DispositivoId FOREIGN KEY (dispositivo_id) REFERENCES suptech.dispositivo (id) ON DELETE CASCADE
);


CREATE TABLE suptech.desarrolla (
    actividad_id integer NOT NULL,
    capacidad_id integer NOT NULL,
    CONSTRAINT PK_CapacidadActividad PRIMARY KEY (actividad_id, capacidad_id),
    CONSTRAINT FK_CapacidadActividad_Actividad_ActividadId FOREIGN KEY (actividad_id) REFERENCES suptech.actividad (id) ON DELETE CASCADE,
    CONSTRAINT FK_CapacidadActividad_Dispositivo_DispositivoId FOREIGN KEY (capacidad_id) REFERENCES suptech.capacidad (id) ON DELETE CASCADE
);
