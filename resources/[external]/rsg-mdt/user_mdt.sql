CREATE TABLE `user_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`mugshot_url` varchar(255) DEFAULT NULL,
	`bail` bit DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `user_convictions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`offense` varchar(255) DEFAULT NULL,
	`count` int(11) DEFAULT NULL,
	
	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_reports` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `charges` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_warrants` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	`char_id` int(11) DEFAULT NULL,
	`report_id` int(11) DEFAULT NULL,
	`report_title` varchar(255) DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	`expire` varchar(255) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
	
       PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_telegrams` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`, `jailtime`) VALUES
(1, 'Ayudar y ser cómplice', 100, 0, 0),
(2, 'Incendio provocado', 500, 0, 30),
(3, 'Robo de vagones blindados', 650, 0, 40),
(4, 'ntento de asesinato en LEO', 1500, 0, 60),
(5, 'Tentativa de asesinato', 1000, 0, 50),
(6, 'Asalto con Arma Mortal en LEO', 700, 0, 45),
(7, 'Asalto con Arma Mortal', 350, 0, 30),
(8, 'Asalto a LEO', 150, 0, 15),
(9, 'Asalto', 100, 0, 10),
(10, 'Robo de un banco', 800, 0, 50),
(11, 'Brandishing a Arma de fuego', 100, 0, 5),
(12, 'Soborno', 200, 0, 20),
(14, 'Corrupcion', 10000, 0, 650),
(15, 'Desacato al tribunal', 250, 0, 10),
(16, 'Travesuras criminales', 100, 0, 15),
(17, 'Exceso de velocidad delictivo', 300, 0, 10),
(18, 'Daños a la Propiedad del Gobierno', 150, 0, 10),
(19, 'Perturbando la Paz', 100, 0, 10),
(21, 'Fabricación/cultivo de drogas', 550, 0, 40),
(22, 'Contrabando', 500, 0, 40),
(23, 'Evadiendo Arresto', 200, 0, 20),
(24, 'Exceso de velocidad 4', 250, 0, 0),
(25, 'Exceso de velocidad 3', 200, 0, 0),
(26, 'Exceso de velocidad 2', 150, 0, 0),
(27, 'Exceso de velocidad', 100, 0, 0),
(28, 'Fallo al detenerse', 100, 0, 0),
(29, 'Informe Falso', 100, 0, 10),
(30, 'Falta de identificación', 150, 0, 15),
(31, 'Incumplimiento de una orden lícita', 150, 0, 10),
(32, 'Suplantación falsa de un funcionario del gobierno', 200, 0, 25),
(33, 'Delito grave tentativa de comisión de un delito/delito', 350, 0, 20),
(34, 'Delito grave de conducir/montar bajo la influencia', 300, 0, 30),
(35, 'Gran Robo de Caballo', 300, 0, 20),
(36, 'Golpear y Correr', 150, 0, 15),
(37, 'Robo en casa', 100, 0, 10),
(38, 'Juegos de azar ilegales', 200, 0, 20),
(40, 'Estacionamiento Ilegal', 100, 0, 0),
(42, 'Exhibición indecente', 100, 0, 0),
(43, 'Reporte de Incidente', 0, 0, 0),
(44, 'Homicidio involuntario', 10000, 0, 120),
(45, 'Secuestro de un LEO', 400, 0, 40),
(46, 'Secuestro / Toma de rehenes', 200, 0, 20),
(47, 'Latrocinio', 150, 0, 20),
(48, 'Merodeando', 100, 0, 0),
(49, 'Asesinato', 25000, 0, 0),
(50, 'Obstrucción de la Justicia', 150, 0, 15),
(51, 'Obstrucción del tráfico', 150, 0, 0),
(52, 'Organizar un evento ilegal', 150, 0, 15),
(53, 'Perjurio', 1000, 0, 60),
(54, 'Participar en un evento ilegal', 50, 0, 5),
(55, 'Posesión de drogas de la Lista 1', 150, 0, 15),
(56, 'Posesión de drogas de la Lista 2', 250, 0, 20),
(57, 'Posesión de un Arma de Fuego Clase 2', 800, 0, 40),
(58, 'Posesión de un Arma de Fuego Clase 1', 150, 0, 15),
(59, 'Posesión de Dinero Sucio', 200, 0, 25),
(60, 'Posesión de Bienes Robados', 100, 0, 15),
(61, 'Prostitución', 250, 0, 15),
(62, 'Intoxicación Pública', 100, 0, 0),
(63, 'Amenaza temeraria', 150, 0, 5),
(64, 'Resistirse al Arresto', 100, 0, 10),
(65, 'Robo de tienda', 150, 0, 15),
(66, 'Venta/distribución de drogas de la Lista 1', 250, 0, 20),
(67, 'Venta/distribución de drogas de la Lista 2', 400, 0, 30),
(68, 'Acoso', 350, 0, 20),
(69, 'Alteración de pruebas', 200, 0, 20),
(70, 'Amenaza de daño corporal', 100, 0, 10),
(71, 'Amenaza terrorista', 150, 0, 10),
(72, 'Invasión', 100, 0, 10),
(74, 'Solicitud Ilícita', 150, 0, 20),
(76, 'Acoso Verbal', 100, 0, 0),
(77, 'Advertencia Verbal', 0, 0, 0),
(80, 'Tráfico de armas de clase 2', 1700, 0, 80),
(81, 'Tráfico de Armas de Clase 1', 800, 0, 45),
(82, 'Cita escrita', 0, 0, 0);
