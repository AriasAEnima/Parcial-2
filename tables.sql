CREATE TABLE `DECANATURA` (
  `nombre` varchar(100) NOT NULL,
  `decano` varchar(100) NOT NULL,
  `pagina_web` varchar(100) NOT NULL,
  `id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `PROGRAMA` (
  `id` int(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pagina_web` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `nivel` varchar(100) NOT NULL,
  `decanatura_id` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PROGRAMA_DECANATURA_FK` (`decanatura_id`),
  CONSTRAINT `PROGRAMA_DECANATURA_FK` FOREIGN KEY (`decanatura_id`) REFERENCES `DECANATURA` (`id`)
) ENGINE=InnoDB;

CREATE TABLE `MATERIA` (
  `mnemonico` varchar(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `programa_id` int(5) NOT NULL,
  `nucleo` varchar(100) NOT NULL,
  `creditos` int(1) NOT NULL,
  `semestre` int(2) NOT NULL,
  PRIMARY KEY (`mnemonico`),
  KEY `MATERIA_CARRERA_FK` (`programa_id`),
  CONSTRAINT `MATERIA_PROGRAMA_FK` FOREIGN KEY (`programa_id`) REFERENCES `PROGRAMA` (`id`)
) ENGINE=InnoDB;

INSERT INTO DECANATURA (nombre,decano,pagina_web,id) VALUES 
('Civil','Héctor Matamoros','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+Civil+',1),
('Electrónica','Javier Chaparro','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+Electr%C3%B3nica+',2),
('Sistemas','Oswaldo Castillo','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+de+Sistemas',3)
;

INSERT INTO PROGRAMA (id,nombre,pagina_web,descripcion,nivel,decanatura_id) VALUES 
(1,'Ingeniería de Sistemas','https://www.escuelaing.edu.co/es/interna/sintesis_del_programa/3960?color=%23009933','Formar ingenieros idóneos que, además de diseñar software con efectividad...','PREGRADO',3)
,(2,'Ingeniería Civil','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+Civil/objetivos','Crear en el alumno, a través del estudio de las ciencias físicas y matemáticas ...','PREGRADO',1)
,(3,'Ingeniería Electrónica','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+Electr%C3%B3nica/objetivos','El Programa de Ingeniería Electrónica, en coherencia con la misión de la Escuela ...','PREGRADO',2)
,(4,'Gestión de la Información','https://www.escuelaing.edu.co/escuela/maestria/gestion-informacion/index.html','Fue creada con motivación de formar ejecutivos de diferentes disciplina ...','MAESTRIA',3)
,(5,'Ingeniería Civil','https://www.escuelaing.edu.co/escuela/maestria/civil/index.html','La escuela presenta su programa de Maestría en Ingeniería Civil con los siguientes énfasis:','MAESTRIA',1)
,(6,'Ingeniería Electrónica','https://www.escuelaing.edu.co/escuela/maestria/electronica/index.html','La escuela presenta su programa de Maestría en Ingeniería Electrónica con los siguientes énfasis:','MAESTRIA',2)
,(7,'Estructuras','https://www.escuelaing.edu.co/escuela/especializacion/estructuras/index.html','La Especialización en Estructuras está diseñada para proporcionar conceptos fundamentales ...','ESPECIALIZACION',1)
;
