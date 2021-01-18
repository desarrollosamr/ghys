CREATE DATABASE IF NOT EXISTS inventiolite;

USE inventiolite;

DROP TABLE IF EXISTS box;

CREATE TABLE `box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO box VALUES("2","2018-10-18 08:00:38");
INSERT INTO box VALUES("3","2018-10-19 13:27:32");
INSERT INTO box VALUES("4","2018-10-20 18:23:41");
INSERT INTO box VALUES("5","2018-10-21 17:49:14");
INSERT INTO box VALUES("6","2018-10-22 07:23:47");
INSERT INTO box VALUES("7","2018-10-23 18:13:34");
INSERT INTO box VALUES("8","2018-10-24 18:18:21");
INSERT INTO box VALUES("9","2018-10-25 18:21:17");
INSERT INTO box VALUES("10","2018-10-26 18:24:26");
INSERT INTO box VALUES("11","2018-10-27 18:31:01");
INSERT INTO box VALUES("12","2018-10-28 14:44:32");
INSERT INTO box VALUES("13","2018-10-29 17:55:21");
INSERT INTO box VALUES("14","2018-10-30 18:09:13");
INSERT INTO box VALUES("15","2018-10-31 17:47:57");
INSERT INTO box VALUES("16","2018-11-01 18:00:07");
INSERT INTO box VALUES("17","2018-11-02 17:46:00");
INSERT INTO box VALUES("18","2018-11-03 17:56:31");
INSERT INTO box VALUES("19","2018-11-04 17:13:14");
INSERT INTO box VALUES("20","2018-11-06 18:13:26");
INSERT INTO box VALUES("21","2018-11-07 17:57:32");
INSERT INTO box VALUES("22","2018-11-08 17:59:24");
INSERT INTO box VALUES("23","2018-11-09 18:15:44");
INSERT INTO box VALUES("24","2018-11-10 18:00:25");
INSERT INTO box VALUES("25","2018-11-11 17:00:56");
DROP TABLE IF EXISTS cambios;

CREATE TABLE `cambios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venta_in` int(11) NOT NULL,
  `venta_out` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `motivo` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO cambios VALUES("2","117","116","2018-11-06 05:35:42","Talla","1");
DROP TABLE IF EXISTS category;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO category VALUES("1","","Short","","2018-10-15 03:16:26");
INSERT INTO category VALUES("2","","Falda","","2018-10-15 03:16:36");
INSERT INTO category VALUES("3","","Set","","2018-10-15 03:16:44");
INSERT INTO category VALUES("4","","Blusa","","2018-10-15 03:16:54");
INSERT INTO category VALUES("5","","Top","","2018-10-15 03:17:03");
INSERT INTO category VALUES("6","","Jean","","2018-10-15 03:17:14");
INSERT INTO category VALUES("7","","Falda short","","2018-10-15 03:17:27");
INSERT INTO category VALUES("8","","Enterito","","2018-10-15 03:17:37");
INSERT INTO category VALUES("9","","Bluson","","2018-10-15 08:19:29");
INSERT INTO category VALUES("10","","Vestido","","2018-10-15 08:22:53");
INSERT INTO category VALUES("11","","Camisa","","2018-10-15 08:23:02");
INSERT INTO category VALUES("12","","Jumpsuit","","2018-10-15 11:00:58");
INSERT INTO category VALUES("13","","Vestido short","","2018-10-15 11:01:11");
INSERT INTO category VALUES("14","","Pantalon","","2018-10-15 11:01:27");
INSERT INTO category VALUES("15","","Camiseta","","2018-10-15 14:13:43");
INSERT INTO category VALUES("16","","Plataforma","","2018-10-15 14:13:55");
INSERT INTO category VALUES("17","","Sandalia","","2018-10-15 14:14:05");
INSERT INTO category VALUES("18","","Aretes","","2018-10-18 09:21:25");
INSERT INTO category VALUES("19","","Mochilas","","2018-10-18 09:21:54");
INSERT INTO category VALUES("20","","Bolsos","","2018-10-18 09:22:06");
INSERT INTO category VALUES("21","","Pulseras","","2018-10-18 09:44:42");
INSERT INTO category VALUES("22","","Collares","","2018-10-20 13:07:44");
INSERT INTO category VALUES("23","","Kimonos","","2018-11-07 15:49:14");
INSERT INTO category VALUES("24","","Sombreros","","2018-11-11 12:38:26");
DROP TABLE IF EXISTS colores;

CREATE TABLE `colores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

INSERT INTO colores VALUES("1","","Amarillo","","2018-10-15 05:32:11");
INSERT INTO colores VALUES("2","","Azul","","2018-10-15 05:32:25");
INSERT INTO colores VALUES("3","","Verde","","2018-10-15 05:32:34");
INSERT INTO colores VALUES("4","","Crema","","2018-10-15 05:32:48");
INSERT INTO colores VALUES("5","","Crudo","","2018-10-15 05:32:57");
INSERT INTO colores VALUES("6","","Palo de rosa","","2018-10-15 05:33:07");
INSERT INTO colores VALUES("7","","Blanco","","2018-10-15 05:33:19");
INSERT INTO colores VALUES("8","","Azul baby","","2018-10-15 05:33:31");
INSERT INTO colores VALUES("9","","Vinotinto","","2018-10-15 05:33:40");
INSERT INTO colores VALUES("10","","Terracota","","2018-10-15 05:33:53");
INSERT INTO colores VALUES("11","","Rojo","","2018-10-15 05:34:15");
INSERT INTO colores VALUES("12","","Azul celeste","","2018-10-15 05:34:25");
INSERT INTO colores VALUES("13","","Plata","","2018-10-15 05:34:46");
INSERT INTO colores VALUES("14","","Denin oscuro","","2018-10-15 05:35:06");
INSERT INTO colores VALUES("15","","Denin claro","","2018-10-15 05:35:16");
INSERT INTO colores VALUES("16","","Negro","","2018-10-15 05:35:35");
INSERT INTO colores VALUES("17","","Beige","","2018-10-15 05:36:05");
INSERT INTO colores VALUES("18","","Gris","","2018-10-15 05:36:20");
INSERT INTO colores VALUES("19","","Indigo","","2018-10-15 05:36:29");
INSERT INTO colores VALUES("20","","Nude","","2018-10-15 05:36:52");
INSERT INTO colores VALUES("21","","Azul rey","","2018-10-15 05:37:08");
INSERT INTO colores VALUES("22","","Azul oscuro","","2018-10-15 05:37:20");
INSERT INTO colores VALUES("23","","Dorado","","2018-10-15 05:38:58");
INSERT INTO colores VALUES("24","","Rosa","","2018-10-15 13:10:12");
INSERT INTO colores VALUES("25","","Azul claro","","2018-10-15 13:39:09");
INSERT INTO colores VALUES("26","","Lila","","2018-10-18 08:39:03");
INSERT INTO colores VALUES("27","","Arena","","2018-10-25 17:27:40");
INSERT INTO colores VALUES("28","","Variado","","2018-11-07 15:26:01");
DROP TABLE IF EXISTS configuration;

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kind` int(11) NOT NULL,
  `val` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `short` (`short`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO configuration VALUES("1","title","Titulo del Sistema","2","Sipuve");
INSERT INTO configuration VALUES("2","use_image_product","Utilizar Imagenes en los productos","1","0");
INSERT INTO configuration VALUES("3","active_clients","Activar clientes","1","0");
INSERT INTO configuration VALUES("4","active_providers","Activar proveedores","1","0");
INSERT INTO configuration VALUES("5","active_categories","Activar categorias","1","0");
INSERT INTO configuration VALUES("6","active_reports_word","Activar reportes en Word","1","0");
INSERT INTO configuration VALUES("7","active_reports_excel","Activar reportes en Excel","3","1");
INSERT INTO configuration VALUES("8","active_reports_pdf","Activar reportes en PDF","1","1");
DROP TABLE IF EXISTS operation;

CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `q` float NOT NULL,
  `d` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `sell_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `operation_type_id` (`operation_type_id`),
  KEY `sell_id` (`sell_id`),
  CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_type` (`id`),
  CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`sell_id`) REFERENCES `sell` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=latin1;

INSERT INTO operation VALUES("3","68","1","0","1","","2018-10-15 10:27:18");
INSERT INTO operation VALUES("4","69","2","0","1","","2018-10-15 10:55:37");
INSERT INTO operation VALUES("5","70","2","0","1","","2018-10-15 10:57:02");
INSERT INTO operation VALUES("6","71","3","0","1","","2018-10-15 10:57:39");
INSERT INTO operation VALUES("10","75","1","0","1","","2018-10-15 10:59:48");
INSERT INTO operation VALUES("11","76","1","0","1","","2018-10-15 11:00:16");
INSERT INTO operation VALUES("13","78","2","0","1","","2018-10-15 11:03:02");
INSERT INTO operation VALUES("14","79","2","0","1","","2018-10-15 11:03:30");
INSERT INTO operation VALUES("15","80","2","0","1","","2018-10-15 11:04:25");
INSERT INTO operation VALUES("16","81","1","0","1","","2018-10-15 11:04:47");
INSERT INTO operation VALUES("17","82","1","0","1","","2018-10-15 11:05:41");
INSERT INTO operation VALUES("18","83","1","0","1","","2018-10-15 11:06:08");
INSERT INTO operation VALUES("19","84","1","0","1","","2018-10-15 11:06:42");
INSERT INTO operation VALUES("20","85","1","0","1","","2018-10-15 11:07:10");
INSERT INTO operation VALUES("21","86","2","0","1","","2018-10-15 11:08:03");
INSERT INTO operation VALUES("22","87","2","0","1","","2018-10-15 11:08:24");
INSERT INTO operation VALUES("23","88","1","0","1","","2018-10-15 11:08:43");
INSERT INTO operation VALUES("24","89","2","0","1","","2018-10-15 11:09:34");
INSERT INTO operation VALUES("25","90","2","0","1","","2018-10-15 11:10:01");
INSERT INTO operation VALUES("26","91","1","0","1","","2018-10-15 11:10:20");
INSERT INTO operation VALUES("27","92","3","0","1","","2018-10-15 11:11:01");
INSERT INTO operation VALUES("30","95","1","0","1","","2018-10-15 11:12:25");
INSERT INTO operation VALUES("31","96","2","0","1","","2018-10-15 11:12:46");
INSERT INTO operation VALUES("32","97","2","0","1","","2018-10-15 11:13:07");
INSERT INTO operation VALUES("33","98","2","0","1","","2018-10-15 11:15:52");
INSERT INTO operation VALUES("34","99","1","0","1","","2018-10-15 11:16:30");
INSERT INTO operation VALUES("35","100","1","0","1","","2018-10-15 11:17:11");
INSERT INTO operation VALUES("36","101","1","0","1","","2018-10-15 11:17:42");
INSERT INTO operation VALUES("37","102","2","0","1","","2018-10-15 11:18:02");
INSERT INTO operation VALUES("38","103","4","0","1","","2018-10-15 11:19:02");
INSERT INTO operation VALUES("39","104","3","0","1","","2018-10-15 11:19:47");
INSERT INTO operation VALUES("40","105","1","0","1","","2018-10-15 11:20:13");
INSERT INTO operation VALUES("41","106","6","0","1","","2018-10-15 11:20:54");
INSERT INTO operation VALUES("42","107","3","0","1","","2018-10-15 11:21:18");
INSERT INTO operation VALUES("43","108","1","0","1","","2018-10-15 11:21:54");
INSERT INTO operation VALUES("44","109","2","0","1","","2018-10-15 11:22:16");
INSERT INTO operation VALUES("45","110","1","0","1","","2018-10-15 11:22:37");
INSERT INTO operation VALUES("46","111","6","0","1","","2018-10-15 11:23:38");
INSERT INTO operation VALUES("47","112","1","0","1","","2018-10-15 11:24:16");
INSERT INTO operation VALUES("48","113","2","0","1","","2018-10-15 11:25:38");
INSERT INTO operation VALUES("49","114","1","0","1","","2018-10-15 11:26:01");
INSERT INTO operation VALUES("50","115","2","0","1","","2018-10-15 11:27:01");
INSERT INTO operation VALUES("51","116","1","0","1","","2018-10-15 11:27:26");
INSERT INTO operation VALUES("52","117","2","0","1","","2018-10-15 11:27:52");
INSERT INTO operation VALUES("53","118","2","0","1","","2018-10-15 11:28:50");
INSERT INTO operation VALUES("54","119","2","0","1","","2018-10-15 11:29:36");
INSERT INTO operation VALUES("55","120","1","0","1","","2018-10-15 11:30:10");
INSERT INTO operation VALUES("56","3","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("58","5","5","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("59","6","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("61","8","5","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("62","9","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("63","10","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("64","11","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("65","12","4","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("67","14","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("68","15","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("69","16","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("70","17","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("71","18","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("72","19","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("73","20","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("74","21","3","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("75","22","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("76","23","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("77","24","3","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("78","25","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("79","26","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("80","27","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("81","28","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("82","29","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("83","30","3","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("84","31","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("85","32","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("86","33","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("87","34","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("88","35","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("89","36","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("90","37","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("91","38","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("92","39","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("93","40","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("94","41","3","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("95","42","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("96","43","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("97","44","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("98","45","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("99","46","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("100","47","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("101","48","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("102","49","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("103","50","3","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("104","51","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("105","52","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("106","53","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("107","54","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("108","55","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("109","56","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("110","57","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("111","58","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("112","59","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("113","60","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("114","61","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("115","62","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("116","63","2","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("117","64","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("118","65","1","0","1","","2018-10-15 00:00:00");
INSERT INTO operation VALUES("120","121","2","0","1","","2018-10-15 13:08:31");
INSERT INTO operation VALUES("121","122","2","0","1","","2018-10-15 13:08:49");
INSERT INTO operation VALUES("122","123","2","0","1","","2018-10-15 13:09:12");
INSERT INTO operation VALUES("123","124","3","0","1","","2018-10-15 13:10:47");
INSERT INTO operation VALUES("124","125","3","0","1","","2018-10-15 13:11:14");
INSERT INTO operation VALUES("125","126","2","0","1","","2018-10-15 13:11:53");
INSERT INTO operation VALUES("127","128","1","0","1","","2018-10-15 13:12:50");
INSERT INTO operation VALUES("128","129","1","0","1","","2018-10-15 13:13:10");
INSERT INTO operation VALUES("129","130","1","0","1","","2018-10-15 13:13:31");
INSERT INTO operation VALUES("130","131","2","0","1","","2018-10-15 13:14:15");
INSERT INTO operation VALUES("131","132","2","0","1","","2018-10-15 13:14:41");
INSERT INTO operation VALUES("132","133","2","0","1","","2018-10-15 13:15:14");
INSERT INTO operation VALUES("133","134","2","0","1","","2018-10-15 13:24:54");
INSERT INTO operation VALUES("134","135","2","0","1","","2018-10-15 13:25:20");
INSERT INTO operation VALUES("135","136","1","0","1","","2018-10-15 13:26:04");
INSERT INTO operation VALUES("136","137","2","0","1","","2018-10-15 13:26:24");
INSERT INTO operation VALUES("137","138","2","0","1","","2018-10-15 13:27:02");
INSERT INTO operation VALUES("138","139","1","0","1","","2018-10-15 13:27:27");
INSERT INTO operation VALUES("139","140","1","0","1","","2018-10-15 13:28:54");
INSERT INTO operation VALUES("140","141","2","0","1","","2018-10-15 13:29:18");
INSERT INTO operation VALUES("141","142","2","0","1","","2018-10-15 13:30:09");
INSERT INTO operation VALUES("142","143","4","0","1","","2018-10-15 13:30:44");
INSERT INTO operation VALUES("143","144","3","0","1","","2018-10-15 13:31:08");
INSERT INTO operation VALUES("144","145","3","0","1","","2018-10-15 13:33:47");
INSERT INTO operation VALUES("145","146","3","0","1","","2018-10-15 13:34:11");
INSERT INTO operation VALUES("146","147","3","0","1","","2018-10-15 13:36:25");
INSERT INTO operation VALUES("147","148","5","0","1","","2018-10-15 13:37:01");
INSERT INTO operation VALUES("148","149","7","0","1","","2018-10-15 13:37:29");
INSERT INTO operation VALUES("149","150","3","0","1","","2018-10-15 13:37:59");
INSERT INTO operation VALUES("150","151","1","0","1","","2018-10-15 13:39:56");
INSERT INTO operation VALUES("151","152","5","0","1","","2018-10-15 13:40:27");
INSERT INTO operation VALUES("152","153","5","0","1","","2018-10-15 13:41:00");
INSERT INTO operation VALUES("153","154","1","0","1","","2018-10-15 13:41:41");
INSERT INTO operation VALUES("154","155","4","0","1","","2018-10-15 13:42:13");
INSERT INTO operation VALUES("155","156","2","0","1","","2018-10-15 13:42:35");
INSERT INTO operation VALUES("156","157","3","0","1","","2018-10-15 13:43:19");
INSERT INTO operation VALUES("157","158","3","0","1","","2018-10-15 13:43:42");
INSERT INTO operation VALUES("158","159","3","0","1","","2018-10-15 13:44:05");
INSERT INTO operation VALUES("159","160","4","0","1","","2018-10-15 13:45:32");
INSERT INTO operation VALUES("160","161","3","0","1","","2018-10-15 13:46:03");
INSERT INTO operation VALUES("161","162","1","0","1","","2018-10-15 13:46:25");
INSERT INTO operation VALUES("162","163","2","0","1","","2018-10-15 13:47:01");
INSERT INTO operation VALUES("163","164","2","0","1","","2018-10-15 13:47:39");
INSERT INTO operation VALUES("164","165","2","0","1","","2018-10-15 13:48:06");
INSERT INTO operation VALUES("165","166","3","0","1","","2018-10-15 13:48:38");
INSERT INTO operation VALUES("166","167","3","0","1","","2018-10-15 13:49:00");
INSERT INTO operation VALUES("167","168","2","0","1","","2018-10-15 13:49:37");
INSERT INTO operation VALUES("168","169","3","0","1","","2018-10-15 13:50:01");
INSERT INTO operation VALUES("169","170","2","0","1","","2018-10-15 14:06:58");
INSERT INTO operation VALUES("170","171","2","0","1","","2018-10-15 14:10:26");
INSERT INTO operation VALUES("171","172","2","0","1","","2018-10-15 14:11:24");
INSERT INTO operation VALUES("172","173","2","0","1","","2018-10-15 14:12:02");
INSERT INTO operation VALUES("173","174","2","0","1","","2018-10-15 14:12:43");
INSERT INTO operation VALUES("174","175","3","0","1","","2018-10-15 14:14:45");
INSERT INTO operation VALUES("175","176","3","0","1","","2018-10-15 14:15:17");
INSERT INTO operation VALUES("176","177","3","0","1","","2018-10-15 14:15:56");
INSERT INTO operation VALUES("177","178","3","0","1","","2018-10-15 14:16:19");
INSERT INTO operation VALUES("178","179","3","0","1","","2018-10-15 14:17:17");
INSERT INTO operation VALUES("179","180","2","0","1","","2018-10-15 14:19:06");
INSERT INTO operation VALUES("180","181","1","0","1","","2018-10-15 14:19:32");
INSERT INTO operation VALUES("181","182","1","0","1","","2018-10-15 14:20:02");
INSERT INTO operation VALUES("182","183","1","0","1","","2018-10-15 14:20:41");
INSERT INTO operation VALUES("183","184","2","0","1","","2018-10-15 14:21:07");
INSERT INTO operation VALUES("184","185","1","0","1","","2018-10-15 14:21:32");
INSERT INTO operation VALUES("185","186","1","0","1","","2018-10-15 14:22:14");
INSERT INTO operation VALUES("186","187","2","0","1","","2018-10-15 14:22:49");
INSERT INTO operation VALUES("187","188","2","0","1","","2018-10-15 14:24:56");
INSERT INTO operation VALUES("188","189","1","0","1","","2018-10-15 14:27:51");
INSERT INTO operation VALUES("189","190","2","0","1","","2018-10-15 14:28:22");
INSERT INTO operation VALUES("190","191","1","0","1","","2018-10-15 14:28:45");
INSERT INTO operation VALUES("191","192","1","0","1","","2018-10-15 14:29:20");
INSERT INTO operation VALUES("192","193","1","0","1","","2018-10-15 14:29:43");
INSERT INTO operation VALUES("193","194","1","0","1","","2018-10-15 14:30:27");
INSERT INTO operation VALUES("194","195","2","0","1","","2018-10-15 14:32:36");
INSERT INTO operation VALUES("195","196","2","0","1","","2018-10-15 14:33:06");
INSERT INTO operation VALUES("196","197","1","0","1","","2018-10-15 14:33:40");
INSERT INTO operation VALUES("197","198","1","0","1","","2018-10-15 14:34:15");
INSERT INTO operation VALUES("198","199","1","0","1","","2018-10-15 14:35:40");
INSERT INTO operation VALUES("199","200","1","0","1","","2018-10-15 14:36:20");
INSERT INTO operation VALUES("200","201","1","0","1","","2018-10-15 14:36:57");
INSERT INTO operation VALUES("201","202","6","0","1","","2018-10-15 14:38:10");
INSERT INTO operation VALUES("202","203","5","0","1","","2018-10-15 14:38:49");
INSERT INTO operation VALUES("203","204","5","0","1","","2018-10-15 14:39:32");
INSERT INTO operation VALUES("204","205","4","0","1","","2018-10-15 14:40:12");
INSERT INTO operation VALUES("205","206","1","0","1","","2018-10-15 20:18:44");
INSERT INTO operation VALUES("206","207","1","0","1","","2018-10-15 20:19:07");
INSERT INTO operation VALUES("207","208","4","0","1","","2018-10-15 20:20:29");
INSERT INTO operation VALUES("208","209","1","0","1","","2018-10-15 20:21:52");
INSERT INTO operation VALUES("209","210","2","0","1","","2018-10-15 20:22:12");
INSERT INTO operation VALUES("210","211","2","0","1","","2018-10-15 20:22:37");
INSERT INTO operation VALUES("211","212","2","0","1","","2018-10-18 02:40:56");
INSERT INTO operation VALUES("217","213","6","0","1","","2018-10-18 08:39:57");
INSERT INTO operation VALUES("218","214","1","0","1","","2018-10-18 08:58:55");
INSERT INTO operation VALUES("219","215","1","0","1","","2018-10-18 08:59:35");
INSERT INTO operation VALUES("220","216","3","0","1","","2018-10-18 09:00:15");
INSERT INTO operation VALUES("221","217","2","0","1","","2018-10-18 09:02:27");
INSERT INTO operation VALUES("222","218","2","0","1","","2018-10-18 09:02:55");
INSERT INTO operation VALUES("223","219","1","0","1","","2018-10-18 09:03:45");
INSERT INTO operation VALUES("224","220","2","0","1","","2018-10-18 09:04:15");
INSERT INTO operation VALUES("225","221","2","0","1","","2018-10-18 09:04:44");
INSERT INTO operation VALUES("232","228","8","0","1","","2018-10-18 09:41:33");
INSERT INTO operation VALUES("233","229","6","0","1","","2018-10-18 09:44:04");
INSERT INTO operation VALUES("234","230","2","0","1","","2018-10-18 09:45:45");
INSERT INTO operation VALUES("235","231","1","0","1","","2018-10-18 09:46:31");
INSERT INTO operation VALUES("236","232","1","0","1","","2018-10-18 09:47:08");
INSERT INTO operation VALUES("237","233","1","0","1","","2018-10-18 09:47:44");
INSERT INTO operation VALUES("238","234","1","0","1","","2018-10-18 09:48:32");
INSERT INTO operation VALUES("239","86","1","0","2","3","2018-10-17 05:40:03");
INSERT INTO operation VALUES("260","111","1","0","2","4","2018-10-18 07:00:42");
INSERT INTO operation VALUES("261","49","1","0","2","5","2018-10-18 07:11:18");
INSERT INTO operation VALUES("262","17","1","0","2","5","2018-10-18 07:11:18");
INSERT INTO operation VALUES("263","52","1","0","2","5","2018-10-18 07:11:18");
INSERT INTO operation VALUES("264","106","1","0","2","5","2018-10-18 07:11:18");
INSERT INTO operation VALUES("265","125","1","0","2","5","2018-10-18 07:11:18");
INSERT INTO operation VALUES("266","151","1","0","2","5","2018-10-18 07:11:18");
INSERT INTO operation VALUES("267","208","1","0","2","5","2018-10-18 07:11:18");
INSERT INTO operation VALUES("268","62","1","0","2","5","2018-10-18 07:11:18");
INSERT INTO operation VALUES("269","26","1","0","2","5","2018-10-18 07:11:19");
INSERT INTO operation VALUES("270","102","1","0","2","5","2018-10-18 07:11:19");
INSERT INTO operation VALUES("271","87","1","0","2","5","2018-10-18 07:11:19");
INSERT INTO operation VALUES("272","6","1","0","2","5","2018-10-18 07:11:19");
INSERT INTO operation VALUES("274","5","1","0","2","5","2018-10-18 07:11:19");
INSERT INTO operation VALUES("275","5","1","0","2","6","2018-10-18 14:56:20");
INSERT INTO operation VALUES("276","12","1","0","2","6","2018-10-18 14:56:20");
INSERT INTO operation VALUES("277","177","1","0","2","6","2018-10-18 14:56:20");
INSERT INTO operation VALUES("278","50","1","0","2","7","2018-10-19 16:13:16");
INSERT INTO operation VALUES("279","63","1","0","2","8","2018-10-19 16:41:15");
INSERT INTO operation VALUES("280","233","1","0","2","9","2018-10-19 16:43:21");
INSERT INTO operation VALUES("282","155","1","0","2","11","2018-10-19 16:55:14");
INSERT INTO operation VALUES("283","70","1","0","2","12","2018-10-19 17:00:02");
INSERT INTO operation VALUES("284","32","1","0","2","13","2018-10-19 17:07:41");
INSERT INTO operation VALUES("285","148","1","0","2","14","2018-10-19 17:09:05");
INSERT INTO operation VALUES("286","142","1","0","2","15","2018-10-19 17:15:19");
INSERT INTO operation VALUES("287","65","1","0","2","16","2018-10-19 17:19:22");
INSERT INTO operation VALUES("289","5","1","0","2","18","2018-10-19 17:21:47");
INSERT INTO operation VALUES("294","235","3","0","1","","2018-10-20 00:00:00");
INSERT INTO operation VALUES("295","236","1","0","1","","2018-10-20 00:00:00");
INSERT INTO operation VALUES("296","237","1","0","1","","2018-10-20 00:00:00");
INSERT INTO operation VALUES("297","238","1","0","1","","2018-10-20 00:00:00");
INSERT INTO operation VALUES("298","235","1","0","2","20","2018-10-19 20:24:45");
INSERT INTO operation VALUES("299","111","1","0","2","21","2018-10-19 20:25:39");
INSERT INTO operation VALUES("300","5","1","0","2","22","2018-10-20 21:17:00");
INSERT INTO operation VALUES("301","204","1","0","2","22","2018-10-20 21:17:00");
INSERT INTO operation VALUES("302","17","1","0","2","23","2018-10-20 21:33:59");
INSERT INTO operation VALUES("303","68","1","0","2","24","2018-10-20 22:27:28");
INSERT INTO operation VALUES("304","42","1","0","2","24","2018-10-20 22:27:28");
INSERT INTO operation VALUES("305","143","1","0","2","24","2018-10-20 22:27:28");
INSERT INTO operation VALUES("306","229","1","0","2","25","2018-10-20 22:36:11");
INSERT INTO operation VALUES("307","197","1","0","2","26","2018-10-20 23:07:21");
INSERT INTO operation VALUES("309","19","1","0","2","28","2018-10-21 16:11:41");
INSERT INTO operation VALUES("310","229","1","0","2","29","2018-10-21 16:12:33");
INSERT INTO operation VALUES("311","208","1","0","2","30","2018-10-21 18:11:02");
INSERT INTO operation VALUES("312","5","1","0","2","31","2018-10-21 20:34:56");
INSERT INTO operation VALUES("313","170","1","0","2","31","2018-10-21 20:34:56");
INSERT INTO operation VALUES("314","62","1","0","2","32","2018-10-21 21:26:45");
INSERT INTO operation VALUES("315","239","2","0","1","","2018-10-21 15:55:17");
INSERT INTO operation VALUES("316","240","2","0","1","","2018-10-21 15:56:38");
INSERT INTO operation VALUES("317","241","3","0","1","","2018-10-21 15:57:17");
INSERT INTO operation VALUES("318","242","1","0","1","","2018-10-21 15:57:52");
INSERT INTO operation VALUES("319","152","1","0","2","33","2018-10-21 23:56:35");
INSERT INTO operation VALUES("320","204","1","0","2","34","2018-10-21 19:44:00");
INSERT INTO operation VALUES("321","165","1","0","2","34","2018-10-21 19:44:00");
INSERT INTO operation VALUES("322","153","1","0","2","34","2018-10-21 19:44:00");
INSERT INTO operation VALUES("323","19","1","0","2","34","2018-10-21 19:44:00");
INSERT INTO operation VALUES("324","96","1","0","2","34","2018-10-21 19:44:00");
INSERT INTO operation VALUES("325","91","1","0","2","34","2018-10-21 19:44:00");
INSERT INTO operation VALUES("326","105","1","0","2","35","2018-10-22 09:46:20");
INSERT INTO operation VALUES("329","124","1","0","2","36","2018-10-18 00:00:00");
INSERT INTO operation VALUES("331","167","1","0","2","37","2018-10-22 00:00:00");
INSERT INTO operation VALUES("332","229","8","0","1","38","2018-10-22 00:00:00");
INSERT INTO operation VALUES("333","246","3","0","1","","2018-10-22 14:47:41");
INSERT INTO operation VALUES("334","159","1","0","2","39","2018-10-23 00:00:00");
INSERT INTO operation VALUES("335","20","1","0","2","39","2018-10-23 00:00:00");
INSERT INTO operation VALUES("336","115","1","0","2","40","2018-10-23 00:00:00");
INSERT INTO operation VALUES("337","219","1","0","2","40","2018-10-23 00:00:00");
INSERT INTO operation VALUES("338","229","1","0","2","41","2018-10-24 00:00:00");
INSERT INTO operation VALUES("339","232","1","0","2","41","2018-10-24 00:00:00");
INSERT INTO operation VALUES("340","157","1","0","2","41","2018-10-24 00:00:00");
INSERT INTO operation VALUES("341","8","1","0","2","42","2018-10-24 00:00:00");
INSERT INTO operation VALUES("342","205","1","0","2","43","2018-10-24 00:00:00");
INSERT INTO operation VALUES("343","78","1","0","2","44","2018-10-24 00:00:00");
INSERT INTO operation VALUES("344","111","1","0","2","45","2018-10-24 00:00:00");
INSERT INTO operation VALUES("345","95","1","0","2","46","2018-10-24 00:00:00");
INSERT INTO operation VALUES("346","184","1","0","2","47","2018-10-24 00:00:00");
INSERT INTO operation VALUES("347","104","1","0","2","47","2018-10-24 00:00:00");
INSERT INTO operation VALUES("348","133","1","0","2","47","2018-10-24 00:00:00");
INSERT INTO operation VALUES("349","64","1","0","2","47","2018-10-24 00:00:00");
INSERT INTO operation VALUES("350","150","1","0","2","48","2018-10-24 00:00:00");
INSERT INTO operation VALUES("351","28","1","0","2","48","2018-10-24 00:00:00");
INSERT INTO operation VALUES("352","157","1","0","2","49","2018-10-24 00:00:00");
INSERT INTO operation VALUES("355","249","1","0","1","","2018-10-24 18:12:46");
INSERT INTO operation VALUES("356","249","1","0","2","50","2018-10-24 00:00:00");
INSERT INTO operation VALUES("357","240","1","0","2","51","2018-10-25 05:33:08");
INSERT INTO operation VALUES("358","96","1","0","2","52","2018-10-25 07:21:01");
INSERT INTO operation VALUES("359","229","1","0","2","52","2018-10-25 07:21:01");
INSERT INTO operation VALUES("360","250","3","0","1","","2018-10-25 17:23:57");
INSERT INTO operation VALUES("361","251","3","0","1","","2018-10-25 17:24:25");
INSERT INTO operation VALUES("362","252","5","0","1","","2018-10-25 17:24:48");
INSERT INTO operation VALUES("363","253","2","0","1","","2018-10-25 17:25:35");
INSERT INTO operation VALUES("364","254","4","0","1","","2018-10-25 17:25:58");
INSERT INTO operation VALUES("365","255","3","0","1","","2018-10-25 17:26:27");
INSERT INTO operation VALUES("366","256","1","0","1","","2018-10-25 17:28:16");
INSERT INTO operation VALUES("367","257","2","0","1","","2018-10-25 17:28:42");
INSERT INTO operation VALUES("368","258","3","0","1","","2018-10-25 17:29:06");
INSERT INTO operation VALUES("369","259","2","0","1","","2018-10-25 17:29:58");
INSERT INTO operation VALUES("370","260","2","0","1","","2018-10-25 17:30:17");
INSERT INTO operation VALUES("371","261","2","0","1","","2018-10-25 17:30:36");
INSERT INTO operation VALUES("372","262","2","0","1","","2018-10-25 17:31:39");
INSERT INTO operation VALUES("373","263","3","0","1","","2018-10-25 17:31:59");
INSERT INTO operation VALUES("374","264","3","0","1","","2018-10-25 17:32:16");
INSERT INTO operation VALUES("375","265","3","0","1","","2018-10-25 17:32:58");
INSERT INTO operation VALUES("376","266","4","0","1","","2018-10-25 17:33:24");
INSERT INTO operation VALUES("377","267","2","0","1","","2018-10-25 17:33:53");
INSERT INTO operation VALUES("378","268","2","0","1","","2018-10-25 17:34:31");
INSERT INTO operation VALUES("379","269","2","0","1","","2018-10-25 17:35:04");
INSERT INTO operation VALUES("380","270","1","0","1","","2018-10-25 17:35:31");
INSERT INTO operation VALUES("381","269","1","0","1","53","2018-10-26 00:00:00");
INSERT INTO operation VALUES("382","269","1","0","1","54","2018-10-26 00:00:00");
INSERT INTO operation VALUES("383","270","2","0","1","55","2018-10-26 00:00:00");
INSERT INTO operation VALUES("387","178","1","0","2","56","2018-10-26 03:26:10");
INSERT INTO operation VALUES("388","40","1","0","2","56","2018-10-26 03:26:10");
INSERT INTO operation VALUES("389","25","1","0","2","57","2018-10-26 03:41:12");
INSERT INTO operation VALUES("390","258","1","0","2","57","2018-10-26 03:41:12");
INSERT INTO operation VALUES("391","61","1","0","2","57","2018-10-26 03:41:12");
INSERT INTO operation VALUES("392","271","1","0","1","","2018-10-26 13:43:14");
INSERT INTO operation VALUES("393","272","1","0","1","","2018-10-26 13:45:47");
INSERT INTO operation VALUES("394","273","1","0","1","","2018-10-26 13:47:00");
INSERT INTO operation VALUES("395","233","2","0","1","58","2018-10-26 00:00:00");
INSERT INTO operation VALUES("396","232","1","0","1","58","2018-10-26 00:00:00");
INSERT INTO operation VALUES("397","11","1","0","2","59","2018-10-26 05:59:11");
INSERT INTO operation VALUES("398","84","1","0","2","59","2018-10-26 05:59:11");
INSERT INTO operation VALUES("399","30","1","0","2","60","2018-10-26 06:15:13");
INSERT INTO operation VALUES("400","108","1","0","2","61","2018-10-26 06:20:45");
INSERT INTO operation VALUES("401","263","1","0","2","61","2018-10-26 06:20:45");
INSERT INTO operation VALUES("402","216","1","0","2","62","2018-10-26 06:55:29");
INSERT INTO operation VALUES("403","61","1","0","2","63","2018-10-26 07:12:55");
INSERT INTO operation VALUES("404","10","1","0","2","64","2018-10-26 07:33:57");
INSERT INTO operation VALUES("405","32","1","0","2","65","2018-10-26 07:48:11");
INSERT INTO operation VALUES("406","217","1","0","2","66","2018-10-26 08:05:22");
INSERT INTO operation VALUES("407","176","1","0","2","67","2018-10-27 10:50:34");
INSERT INTO operation VALUES("408","162","1","0","2","68","2018-10-27 12:40:43");
INSERT INTO operation VALUES("409","240","1","0","2","69","2018-10-27 03:37:49");
INSERT INTO operation VALUES("410","168","1","0","2","69","2018-10-27 03:37:49");
INSERT INTO operation VALUES("411","124","1","0","2","69","2018-10-27 03:37:49");
INSERT INTO operation VALUES("412","70","1","0","2","70","2018-10-27 04:21:22");
INSERT INTO operation VALUES("413","30","1","0","2","71","2018-10-27 04:45:32");
INSERT INTO operation VALUES("414","202","1","0","2","72","2018-10-27 07:49:59");
INSERT INTO operation VALUES("415","261","1","0","2","72","2018-10-27 07:49:59");
INSERT INTO operation VALUES("416","39","1","0","2","72","2018-10-27 07:49:59");
INSERT INTO operation VALUES("417","12","1","0","2","73","2018-10-28 12:44:59");
INSERT INTO operation VALUES("418","28","1","0","2","74","2018-10-28 12:50:18");
INSERT INTO operation VALUES("419","97","1","0","2","75","2018-10-28 02:12:48");
INSERT INTO operation VALUES("420","274","1","0","1","","2018-10-28 15:40:03");
INSERT INTO operation VALUES("421","40","1","0","2","76","2018-10-29 03:30:36");
INSERT INTO operation VALUES("422","204","1","0","2","77","2018-10-29 06:09:07");
INSERT INTO operation VALUES("423","172","1","0","2","77","2018-10-29 06:09:07");
INSERT INTO operation VALUES("424","242","1","0","2","77","2018-10-29 06:09:07");
INSERT INTO operation VALUES("425","165","1","0","2","77","2018-10-29 06:09:07");
INSERT INTO operation VALUES("426","158","1","0","2","77","2018-10-29 06:09:07");
INSERT INTO operation VALUES("427","107","1","0","2","78","2018-10-30 09:48:27");
INSERT INTO operation VALUES("428","229","1","0","2","79","2018-10-30 02:14:14");
INSERT INTO operation VALUES("429","208","1","0","2","79","2018-10-30 02:14:14");
INSERT INTO operation VALUES("430","163","1","0","2","79","2018-10-30 02:14:14");
INSERT INTO operation VALUES("431","124","1","0","2","79","2018-10-30 02:14:14");
INSERT INTO operation VALUES("432","160","1","0","2","79","2018-10-30 02:14:14");
INSERT INTO operation VALUES("433","260","1","0","2","79","2018-10-30 02:14:14");
INSERT INTO operation VALUES("434","112","1","0","2","79","2018-10-30 02:14:14");
INSERT INTO operation VALUES("435","44","1","0","2","80","2018-10-30 04:51:56");
INSERT INTO operation VALUES("436","25","1","0","2","81","2018-10-30 08:04:10");
INSERT INTO operation VALUES("437","156","1","0","2","81","2018-10-30 08:04:10");
INSERT INTO operation VALUES("438","143","1","0","2","81","2018-10-30 08:04:10");
INSERT INTO operation VALUES("439","110","1","0","2","81","2018-10-30 08:04:10");
INSERT INTO operation VALUES("440","246","1","0","2","81","2018-10-30 08:04:10");
INSERT INTO operation VALUES("441","71","1","0","2","82","2018-10-31 05:27:34");
INSERT INTO operation VALUES("442","18","1","0","2","83","2018-10-31 05:55:27");
INSERT INTO operation VALUES("443","229","1","0","2","84","2018-10-31 05:57:57");
INSERT INTO operation VALUES("444","228","1","0","2","85","2018-11-01 10:04:07");
INSERT INTO operation VALUES("445","81","1","0","2","86","2018-11-01 01:55:47");
INSERT INTO operation VALUES("446","147","1","0","2","87","2018-11-01 02:58:19");
INSERT INTO operation VALUES("447","14","1","0","2","87","2018-11-01 02:58:19");
INSERT INTO operation VALUES("448","235","1","0","2","87","2018-11-01 02:58:19");
INSERT INTO operation VALUES("449","51","1","0","2","88","2018-11-01 07:40:28");
INSERT INTO operation VALUES("450","41","1","0","2","89","2018-11-02 01:30:34");
INSERT INTO operation VALUES("451","229","1","0","2","90","2018-11-02 03:09:12");
INSERT INTO operation VALUES("452","232","1","0","2","90","2018-11-02 03:09:12");
INSERT INTO operation VALUES("453","53","1","0","2","91","2018-11-02 04:48:08");
INSERT INTO operation VALUES("454","229","1","0","2","92","2018-11-02 06:15:20");
INSERT INTO operation VALUES("455","229","1","0","2","93","2018-11-02 06:20:57");
INSERT INTO operation VALUES("456","230","1","0","2","93","2018-11-02 06:20:57");
INSERT INTO operation VALUES("457","266","1","0","2","94","2018-11-02 06:26:50");
INSERT INTO operation VALUES("458","228","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("459","135","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("460","46","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("461","152","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("463","260","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("464","257","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("465","246","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("466","82","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("467","172","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("468","229","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("469","230","1","0","2","95","2018-11-02 06:52:48");
INSERT INTO operation VALUES("470","89","1","0","2","96","2018-11-03 12:25:35");
INSERT INTO operation VALUES("471","115","1","0","2","96","2018-11-03 12:25:35");
INSERT INTO operation VALUES("472","208","1","0","2","96","2018-11-03 12:25:35");
INSERT INTO operation VALUES("473","83","1","0","2","97","2018-11-03 01:07:47");
INSERT INTO operation VALUES("474","205","1","0","2","98","2018-11-03 01:57:10");
INSERT INTO operation VALUES("475","152","1","0","2","98","2018-11-03 01:57:10");
INSERT INTO operation VALUES("476","149","1","0","2","98","2018-11-03 01:57:10");
INSERT INTO operation VALUES("477","126","1","0","2","99","2018-11-03 03:24:35");
INSERT INTO operation VALUES("478","16","1","0","2","100","2018-11-03 05:43:29");
INSERT INTO operation VALUES("479","182","1","0","2","101","2018-11-03 05:44:46");
INSERT INTO operation VALUES("481","276","5","0","1","","2018-11-03 16:23:31");
INSERT INTO operation VALUES("482","263","1","0","2","102","2018-11-04 11:48:30");
INSERT INTO operation VALUES("483","15","1","0","2","102","2018-11-04 11:48:30");
INSERT INTO operation VALUES("484","6","1","0","2","102","2018-11-04 11:48:30");
INSERT INTO operation VALUES("485","109","1","0","2","103","2018-11-06 09:59:23");
INSERT INTO operation VALUES("487","228","1","0","2","105","2018-11-06 03:57:45");
INSERT INTO operation VALUES("488","174","1","0","2","105","2018-11-06 03:57:45");
INSERT INTO operation VALUES("511","174","1","0","4","116","2018-11-06 05:35:42");
INSERT INTO operation VALUES("512","71","1","0","4","116","2018-11-06 05:35:42");
INSERT INTO operation VALUES("513","48","1","0","4","116","2018-11-06 05:35:42");
INSERT INTO operation VALUES("514","203","1","0","4","116","2018-11-06 05:35:42");
INSERT INTO operation VALUES("515","229","1","0","4","116","2018-11-06 05:35:42");
INSERT INTO operation VALUES("516","112","1","0","3","117","2018-11-06 05:35:42");
INSERT INTO operation VALUES("517","208","1","0","3","117","2018-11-06 05:35:42");
INSERT INTO operation VALUES("518","124","1","0","3","117","2018-11-06 05:35:42");
INSERT INTO operation VALUES("519","260","1","0","3","117","2018-11-06 05:35:42");
INSERT INTO operation VALUES("520","177","1","0","2","118","2018-11-06 06:13:03");
INSERT INTO operation VALUES("521","68","1","0","1","119","2018-11-06 00:00:00");
INSERT INTO operation VALUES("522","60","1","0","2","120","2018-11-06 07:16:08");
INSERT INTO operation VALUES("523","212","1","0","2","120","2018-11-06 07:16:08");
INSERT INTO operation VALUES("524","196","1","0","2","121","2018-11-06 08:01:44");
INSERT INTO operation VALUES("525","169","1","0","2","122","2018-11-06 08:10:35");
INSERT INTO operation VALUES("526","12","1","0","2","123","2018-11-07 02:34:52");
INSERT INTO operation VALUES("527","78","1","0","2","124","2018-11-07 02:36:50");
INSERT INTO operation VALUES("528","277","13","0","1","","2018-11-07 15:28:02");
INSERT INTO operation VALUES("529","278","9","0","1","","2018-11-07 15:28:54");
INSERT INTO operation VALUES("530","279","3","0","1","","2018-11-07 15:30:02");
INSERT INTO operation VALUES("531","280","4","0","1","","2018-11-07 15:30:38");
INSERT INTO operation VALUES("532","281","2","0","1","","2018-11-07 15:32:56");
INSERT INTO operation VALUES("533","282","2","0","1","","2018-11-07 15:33:31");
INSERT INTO operation VALUES("534","283","2","0","1","","2018-11-07 15:34:17");
INSERT INTO operation VALUES("535","284","2","0","1","","2018-11-07 15:34:50");
INSERT INTO operation VALUES("537","286","3","0","1","","2018-11-07 15:41:50");
INSERT INTO operation VALUES("538","287","3","0","1","","2018-11-07 15:42:20");
INSERT INTO operation VALUES("539","288","3","0","1","","2018-11-07 15:43:35");
INSERT INTO operation VALUES("540","289","2","0","1","","2018-11-07 15:44:14");
INSERT INTO operation VALUES("541","290","8","0","1","","2018-11-07 15:44:52");
INSERT INTO operation VALUES("542","291","5","0","1","","2018-11-07 15:46:52");
INSERT INTO operation VALUES("543","292","3","0","1","","2018-11-07 15:48:21");
INSERT INTO operation VALUES("544","293","6","0","1","","2018-11-07 15:49:53");
INSERT INTO operation VALUES("545","294","5","0","1","","2018-11-07 15:50:44");
INSERT INTO operation VALUES("546","295","3","0","1","","2018-11-07 15:51:51");
INSERT INTO operation VALUES("547","296","1","0","1","","2018-11-07 15:52:54");
INSERT INTO operation VALUES("548","297","3","0","1","","2018-11-07 15:53:21");
INSERT INTO operation VALUES("549","298","3","0","1","","2018-11-07 15:55:31");
INSERT INTO operation VALUES("550","157","1","0","1","125","2018-11-07 00:00:00");
INSERT INTO operation VALUES("551","299","2","0","1","","2018-11-07 15:58:17");
INSERT INTO operation VALUES("552","300","1","0","1","","2018-11-07 15:59:18");
INSERT INTO operation VALUES("553","301","4","0","1","","2018-11-07 16:00:55");
INSERT INTO operation VALUES("554","302","4","0","1","","2018-11-07 16:01:27");
INSERT INTO operation VALUES("555","303","1","0","1","","2018-11-07 16:02:26");
INSERT INTO operation VALUES("556","304","2","0","1","","2018-11-07 16:02:56");
INSERT INTO operation VALUES("557","305","2","0","1","","2018-11-07 16:03:23");
INSERT INTO operation VALUES("558","306","2","0","1","","2018-11-07 16:03:50");
INSERT INTO operation VALUES("559","307","3","0","1","","2018-11-07 16:04:55");
INSERT INTO operation VALUES("560","308","1","0","1","","2018-11-07 16:06:02");
INSERT INTO operation VALUES("561","309","4","0","1","","2018-11-07 16:06:27");
INSERT INTO operation VALUES("562","310","4","0","1","","2018-11-07 16:06:56");
INSERT INTO operation VALUES("563","311","6","0","1","","2018-11-07 16:07:50");
INSERT INTO operation VALUES("564","312","4","0","1","","2018-11-07 16:09:12");
INSERT INTO operation VALUES("574","24","1","0","2","135","2018-11-08 09:47:22");
INSERT INTO operation VALUES("575","279","1","0","2","136","2018-11-08 12:52:12");
INSERT INTO operation VALUES("576","29","1","0","2","137","2018-11-08 01:02:25");
INSERT INTO operation VALUES("577","313","2","0","1","","2018-11-08 13:50:26");
INSERT INTO operation VALUES("578","314","2","0","1","","2018-11-08 13:50:53");
INSERT INTO operation VALUES("579","315","2","0","1","","2018-11-08 13:51:15");
INSERT INTO operation VALUES("580","316","2","0","1","","2018-11-08 13:53:31");
INSERT INTO operation VALUES("581","317","2","0","1","","2018-11-08 13:53:52");
INSERT INTO operation VALUES("582","318","2","0","1","","2018-11-08 13:54:12");
INSERT INTO operation VALUES("583","319","11","0","1","","2018-11-08 13:56:28");
INSERT INTO operation VALUES("584","320","1","0","1","","2018-11-08 13:58:34");
INSERT INTO operation VALUES("585","321","1","0","1","","2018-11-08 14:00:13");
INSERT INTO operation VALUES("586","322","4","0","1","","2018-11-08 14:01:06");
INSERT INTO operation VALUES("587","323","6","0","1","","2018-11-08 14:01:47");
INSERT INTO operation VALUES("588","324","1","0","1","","2018-11-08 14:02:56");
INSERT INTO operation VALUES("589","325","1","0","1","","2018-11-08 14:03:42");
INSERT INTO operation VALUES("590","326","1","0","1","","2018-11-08 14:04:24");
INSERT INTO operation VALUES("591","327","2","0","1","","2018-11-08 14:06:54");
INSERT INTO operation VALUES("592","301","1","0","2","138","2018-11-08 06:16:51");
INSERT INTO operation VALUES("593","268","1","0","2","139","2018-11-08 07:06:31");
INSERT INTO operation VALUES("594","262","1","0","2","139","2018-11-08 07:06:31");
INSERT INTO operation VALUES("595","168","1","0","2","139","2018-11-08 07:06:31");
INSERT INTO operation VALUES("596","241","1","0","2","139","2018-11-08 07:06:31");
INSERT INTO operation VALUES("597","204","1","0","2","140","2018-11-09 11:18:16");
INSERT INTO operation VALUES("598","229","1","0","2","141","2018-11-09 11:31:59");
INSERT INTO operation VALUES("599","196","1","0","2","142","2018-11-09 11:38:08");
INSERT INTO operation VALUES("600","299","1","0","2","142","2018-11-09 11:38:08");
INSERT INTO operation VALUES("601","293","1","0","2","142","2018-11-09 11:38:08");
INSERT INTO operation VALUES("602","102","1","0","2","143","2018-11-09 11:47:49");
INSERT INTO operation VALUES("603","310","1","0","2","144","2018-11-09 12:40:53");
INSERT INTO operation VALUES("604","178","1","0","2","144","2018-11-09 12:40:53");
INSERT INTO operation VALUES("605","12","1","0","2","144","2018-11-09 12:40:53");
INSERT INTO operation VALUES("606","277","1","0","2","144","2018-11-09 12:40:53");
INSERT INTO operation VALUES("607","278","1","0","2","144","2018-11-09 12:40:53");
INSERT INTO operation VALUES("608","298","1","0","2","145","2018-11-09 01:51:30");
INSERT INTO operation VALUES("609","304","1","0","2","145","2018-11-09 01:51:30");
INSERT INTO operation VALUES("610","293","1","0","2","145","2018-11-09 01:51:30");
INSERT INTO operation VALUES("611","293","1","0","2","146","2018-11-09 04:22:57");
INSERT INTO operation VALUES("612","320","1","0","2","146","2018-11-09 04:22:57");
INSERT INTO operation VALUES("613","22","1","0","2","146","2018-11-09 04:22:57");
INSERT INTO operation VALUES("614","307","1","0","2","147","2018-11-09 04:26:11");
INSERT INTO operation VALUES("615","296","1","0","2","148","2018-11-09 05:01:33");
INSERT INTO operation VALUES("616","308","1","0","2","149","2018-11-09 06:50:09");
INSERT INTO operation VALUES("617","290","1","0","2","150","2018-11-09 07:14:28");
INSERT INTO operation VALUES("618","103","1","0","2","151","2018-11-10 10:41:18");
INSERT INTO operation VALUES("619","228","1","0","2","151","2018-11-10 10:41:18");
INSERT INTO operation VALUES("620","137","1","0","2","152","2018-11-10 01:04:07");
INSERT INTO operation VALUES("621","277","1","0","2","153","2018-11-10 01:45:24");
INSERT INTO operation VALUES("622","41","1","0","2","154","2018-11-10 02:52:18");
INSERT INTO operation VALUES("623","15","1","0","2","154","2018-11-10 02:52:18");
INSERT INTO operation VALUES("624","299","1","0","2","154","2018-11-10 02:52:18");
INSERT INTO operation VALUES("625","169","1","0","2","155","2018-11-10 04:12:52");
INSERT INTO operation VALUES("626","136","1","0","2","156","2018-11-10 04:53:06");
INSERT INTO operation VALUES("627","111","1","0","2","157","2018-11-10 06:12:16");
INSERT INTO operation VALUES("628","210","1","0","2","157","2018-11-10 06:12:16");
INSERT INTO operation VALUES("629","184","1","0","2","158","2018-11-10 06:25:12");
INSERT INTO operation VALUES("630","8","1","0","2","159","2018-11-10 06:50:49");
INSERT INTO operation VALUES("631","229","1","0","2","160","2018-11-10 07:08:38");
INSERT INTO operation VALUES("632","282","1","0","2","161","2018-11-10 07:27:27");
INSERT INTO operation VALUES("633","290","1","0","2","161","2018-11-10 07:27:27");
INSERT INTO operation VALUES("634","49","1","0","2","162","2018-11-11 12:41:46");
INSERT INTO operation VALUES("635","323","1","0","2","162","2018-11-11 12:41:46");
INSERT INTO operation VALUES("639","258","1","0","7","163","2018-11-11 02:28:36");
INSERT INTO operation VALUES("641","328","1","0","1","","2018-11-11 12:39:07");
INSERT INTO operation VALUES("642","328","1","0","2","164","2018-11-11 02:42:32");
INSERT INTO operation VALUES("646","34","1","0","2","166","2018-11-16 12:30:14");
INSERT INTO operation VALUES("647","258","1","0","2","166","2018-11-16 12:30:14");
INSERT INTO operation VALUES("648","261","1","0","2","166","2018-11-16 12:30:14");
INSERT INTO operation VALUES("649","21","1","0","7","167","2018-11-17 04:58:51");
INSERT INTO operation VALUES("650","21","1","0","2","168","2018-11-17 05:05:14");
INSERT INTO operation VALUES("651","21","1","0","2","169","2018-11-17 05:28:49");
INSERT INTO operation VALUES("652","233","1","0","7","170","2018-11-17 05:46:26");
INSERT INTO operation VALUES("653","233","1","0","2","171","2018-11-17 05:47:46");
INSERT INTO operation VALUES("654","111","1","0","7","172","2018-11-17 06:04:24");
INSERT INTO operation VALUES("655","111","1","0","2","173","2018-11-17 06:05:07");
INSERT INTO operation VALUES("656","8","1","0","7","174","2018-11-17 06:08:18");
INSERT INTO operation VALUES("657","8","1","0","2","175","2018-11-17 06:08:49");
INSERT INTO operation VALUES("658","205","1","0","2","176","2018-11-17 06:09:47");
INSERT INTO operation VALUES("659","253","1","0","7","177","2018-11-17 06:11:16");
INSERT INTO operation VALUES("660","253","1","0","2","178","2018-11-17 06:11:47");
INSERT INTO operation VALUES("661","228","1","0","7","179","2018-11-17 06:38:58");
INSERT INTO operation VALUES("662","228","1","0","2","180","2018-11-17 06:40:48");
INSERT INTO operation VALUES("663","258","1","0","2","181","2018-11-17 07:17:21");
INSERT INTO operation VALUES("665","54","1","0","2","182","2018-11-17 09:10:08");
INSERT INTO operation VALUES("666","55","1","0","2","183","2018-11-17 10:19:07");
INSERT INTO operation VALUES("668","281","1","0","5","185","2018-11-17 04:15:36");
DROP TABLE IF EXISTS operation_type;

CREATE TABLE `operation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO operation_type VALUES("1","entrada");
INSERT INTO operation_type VALUES("2","salida");
INSERT INTO operation_type VALUES("3","Cambio entrada");
INSERT INTO operation_type VALUES("4","Cambio salida");
INSERT INTO operation_type VALUES("5","Reserva");
INSERT INTO operation_type VALUES("6","Bono por devolucion");
INSERT INTO operation_type VALUES("7","Cancelado");
DROP TABLE IF EXISTS person;

CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `phone1` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `email1` varchar(50) NOT NULL,
  `email2` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

INSERT INTO person VALUES("1","","Luis","Bohorquez","","","","","","luispit1000@gmail.com","","","2018-10-15 00:00:00");
INSERT INTO person VALUES("2","","Gabriel","Barrios","","Cra 63 # 48-79","","3233656749","","gbarriosf@gmail.com","","1","2018-10-18 03:06:19");
INSERT INTO person VALUES("3","","cambio","m","","1","","","","","","2","2018-10-20 09:51:47");
INSERT INTO person VALUES("4","","Gina","Santon","","g","","3002514869","","f@gmail.com","","1","2018-10-20 14:16:54");
INSERT INTO person VALUES("5","","liliana ","prieto","","m","","3107279182","","","","1","2018-10-20 14:32:38");
INSERT INTO person VALUES("6","","damaris","suares","","d","","3106024272","","","","1","2018-10-20 15:27:21");
INSERT INTO person VALUES("7","","Astrid ","De Gomez","","a","","3037371","","a","","1","2018-10-20 16:07:14");
INSERT INTO person VALUES("8","","claudia","ardila ","","CALLE 99A # 52-168","","3013609083","","","","1","2018-10-21 07:26:42");
INSERT INTO person VALUES("9","","luis ","bohorquez","","calle  70 ","","3022855813","","","","1","2018-10-21 07:27:28");
INSERT INTO person VALUES("10","","milena del pilar","ardila carreño","","calle 99 a nro 52-160","","3217397500","","milenardila@hotmail.com","","1","2018-10-21 07:33:03");
INSERT INTO person VALUES("11","","jackeline","rojas","","calle ","","3215638486","","","","1","2018-10-21 09:08:51");
INSERT INTO person VALUES("12","","mabeline ","rojas","","cra","","3004416381","","","","1","2018-10-21 09:09:34");
INSERT INTO person VALUES("13","","gladys ","giraldo","","kra","","3013537791","","","","1","2018-10-21 13:34:28");
INSERT INTO person VALUES("14","","doli","modelo","","miramar","","3012795125","","","","1","2018-10-21 13:39:36");
INSERT INTO person VALUES("15","","miriam","florez","","klle","","3168787","","","","1","2018-10-21 14:26:27");
INSERT INTO person VALUES("16","","joseleine andrea ","barros sanchez ","","cra42 g2 numereo 97 68 el tabor","","3013712839","","","","1","2018-10-22 07:51:25");
INSERT INTO person VALUES("17","","claudia ","sarinas","","cr45 9628","","3002812545","","","","1","2018-10-22 13:54:06");
INSERT INTO person VALUES("18","","juli","medina","","l","","3015776250","","","","1","2018-10-22 16:41:46");
INSERT INTO person VALUES("19","","ilma","hernandez","","ll","","3008012973","","","","1","2018-10-23 10:20:27");
INSERT INTO person VALUES("20","","sharay","palacio","","cas","","3002438381","","","","1","2018-10-23 17:04:24");
INSERT INTO person VALUES("21","","rosa ","salas","","calle93 71117","","3145913983","","","","1","2018-10-24 10:00:48");
INSERT INTO person VALUES("22","","kelly","campo","","kellycampo","","3008854091","","","","1","2018-10-24 11:16:44");
INSERT INTO person VALUES("23","","edith","ospino fonseca","","call","","3103632774","","","","1","2018-10-24 12:19:14");
INSERT INTO person VALUES("24","","karen","miranda","","d","","317523104","","","","1","2018-10-24 15:36:19");
INSERT INTO person VALUES("25","","silbana","quintero","","g","","3508464965","","","","1","2018-10-24 17:16:35");
INSERT INTO person VALUES("26","","angelica","guerra","","cas","","3174005973","","","","1","2018-10-24 18:03:26");
INSERT INTO person VALUES("27","","karina","vergara","","a","","3003832300","","","","1","2018-10-24 18:05:29");
INSERT INTO person VALUES("28","","janete","c","","a","","3137658481","","","","1","2018-10-24 18:15:55");
INSERT INTO person VALUES("29","","Blanca","Aristizabal","","m","","3103663114","","blanca_aristi@hotmail.com","","1","2018-10-25 17:20:32");
INSERT INTO person VALUES("30","","kate","modista","","call","","3174005973","","","","2","2018-10-26 09:33:51");
INSERT INTO person VALUES("31","","greys ","cerge","","g","","3016402104","","","","1","2018-10-26 13:12:37");
INSERT INTO person VALUES("32","","jenifer ","chaparro","","f","","3126055525","","","","1","2018-10-26 13:25:56");
INSERT INTO person VALUES("33","","usiacuri","bolsos","","u","","3098754562","","","","2","2018-10-26 13:48:13");
INSERT INTO person VALUES("34","","daniela ","carmona","","45","","","","","","1","2018-10-26 16:20:42");
INSERT INTO person VALUES("35","","fracy","mondis","","cre43 numero 98 86","","3012776017","","","","1","2018-10-26 16:55:24");
INSERT INTO person VALUES("36","","lilibet","villareal","","c","","3159278069","","","","1","2018-10-26 17:33:53");
INSERT INTO person VALUES("37","","andrea","freylen","","34","","3017692337","","","","1","2018-10-26 17:48:07");
INSERT INTO person VALUES("38","","laura","vasquez ","","cr","","350388600","","","","1","2018-10-26 18:05:19");
INSERT INTO person VALUES("39","","maria fernanda","fragozo","","j","","3166256929","","a","","1","2018-10-27 10:40:24");
INSERT INTO person VALUES("40","","claudia","rodriguez ","","cr","","3126254719","","","","1","2018-10-27 13:37:46");
INSERT INTO person VALUES("41","","luisa","escamilla","","call","","3148200311","","","","1","2018-10-27 14:21:20");
INSERT INTO person VALUES("42","","daniela ","padilla","","call","","3157247578","","","","1","2018-10-27 14:45:29");
INSERT INTO person VALUES("43","","johana","diaz","","s","","3004383026","","a","","1","2018-10-27 17:49:53");
INSERT INTO person VALUES("44","","maria rosa","valdobino","",".","","3008153359","","","","1","2018-10-28 10:44:38");
INSERT INTO person VALUES("45","","aida","palmete","",".","","3208485913","",",","","1","2018-10-28 12:12:46");
INSERT INTO person VALUES("46","","blanca ","otero","","c","","3007025293","","","","1","2018-10-29 13:30:24");
INSERT INTO person VALUES("47","","hercilis","carreño","","q","","3022132092","","","","1","2018-10-29 16:07:41");
INSERT INTO person VALUES("48","","blanca","Aristizabal","","a","","3103663114","","x","","1","2018-10-30 07:48:12");
INSERT INTO person VALUES("49","","MARTA","carmona","","TRANVERSAL 44 BRISAS DEL MAR","","3208493122","","","","1","2018-10-30 12:14:12");
INSERT INTO person VALUES("50","","ORNELA","MOLINARES","","call","","3017143920","","","","1","2018-10-30 14:51:51");
INSERT INTO person VALUES("51","","milena","ardila","",".","","3217397500","","c","","1","2018-10-30 18:03:13");
INSERT INTO person VALUES("52","","LEONITH ","VILLERO","",".","","3016473911","","a","","1","2018-10-31 15:26:49");
INSERT INTO person VALUES("53","","kelly ","bustillo ","","x","","3103611710","","c","","1","2018-10-31 15:55:07");
INSERT INTO person VALUES("54","","berta ","jimenez","","z","","3027180","","z","","1","2018-11-01 08:04:02");
INSERT INTO person VALUES("55","","lili","rodriquez","","a","","9733366692","","z","","1","2018-11-01 11:55:29");
INSERT INTO person VALUES("56","","donna","martinez","","cra 51 nro 27-86","","3125864558","","donamartinez1886@gmail.com","","1","2018-11-01 15:46:53");
INSERT INTO person VALUES("57","","alejandra","de los reyes","","cra 43 c nro 102-153","","3002625112","","alejandra.delosreyes03gmail.com","","1","2018-11-01 17:40:27");
INSERT INTO person VALUES("58","","lorena ","contrera","","calle98-42g -105","","3007557","","","","1","2018-11-02 11:30:27");
INSERT INTO person VALUES("59","","ecciomara","fuente","","calle 98 mirador del mar","","3005061747","","","","1","2018-11-02 14:48:03");
INSERT INTO person VALUES("60","","MAYILIENE","MORENO","","CRA 42G-82-103","","35009291","","","","1","2018-11-02 16:15:16");
INSERT INTO person VALUES("61","","SISSY","FERNANDEZ","","CRA 65-99-109","","3122029368","","","","1","2018-11-02 16:20:52");
INSERT INTO person VALUES("62","","DIANA","REYES","","CALLE 98 NRO 42G 105","","3327271","","A","","1","2018-11-02 16:26:32");
INSERT INTO person VALUES("63","","SILVIA","ANGULO","","CRA 17 NRO 76B 71","","3008464954","","a","","1","2018-11-02 16:52:43");
INSERT INTO person VALUES("64","","rita","vergara","","a","","3158608820","","a","","1","2018-11-03 11:07:45");
INSERT INTO person VALUES("65","","liseth","borgan","","cra 6 nro 34c -23","","3002049435","","z","","1","2018-11-03 11:55:49");
INSERT INTO person VALUES("66","","DIANA CAROLINA","OROZCO","","CALE99C-43-150","","3216951894","","DIANAOROZCOLIVE.COM","","1","2018-11-03 13:24:31");
INSERT INTO person VALUES("67","","NORAIMA","BLANCO","",".","","3116578712","","A","","1","2018-11-03 15:42:55");
INSERT INTO person VALUES("68","","yajaira","torres","","clle 93 nro 71-117","","3008167008","","z","","1","2018-11-06 09:30:51");
INSERT INTO person VALUES("69","","Sandra","Gonzalez","","c","","3023884324","","sandradesagbini@gmail.com","","1","2018-11-06 13:57:19");
INSERT INTO person VALUES("70","","irina","peña","","cra 42 h nro 97-38","","3013517471","","irinapena@hotmail.com","","1","2018-11-06 16:13:00");
INSERT INTO person VALUES("71","","ingrid ","caguan","","TRANVERSAL 44 BRISAS DEL MAR","","3006612507","","a","","1","2018-11-06 17:14:57");
INSERT INTO person VALUES("72","","michel","contreras","","a","","3136959155","","q","","1","2018-11-06 18:01:26");
INSERT INTO person VALUES("73","","valentina","lombana","","clle 99 a nro 42 f 211","","3013148800","","","","1","2018-11-06 18:10:16");
INSERT INTO person VALUES("74","","monica","salas","","clle 100 nro 42 f 100 torre 6 apto 202","","3008016882","","monicapatricia30@hotmail.es","","1","2018-11-07 12:34:50");
INSERT INTO person VALUES("75","","paola","santander","","transversal 44 nro 99 c 70","","3043729","","paosantander21@gmail.com","","1","2018-11-07 18:17:46");
INSERT INTO person VALUES("76","","astrid","sarabia","","cra 44 nro 100 82","","3014667057","","x","","1","2018-11-08 10:52:10");
INSERT INTO person VALUES("77","","gina","arevalo ","","cra 10a nro 36 -22","","40939635","","c","","1","2018-11-08 11:02:20");
INSERT INTO person VALUES("78","","maria jose","sanchez","","calle 92-42b1-183","","3043371270","","","","1","2018-11-08 17:04:41");
INSERT INTO person VALUES("79","","maria jose","sanchez","","calle 92-42b1-183","","3043371270","","","","1","2018-11-08 17:06:15");
INSERT INTO person VALUES("80","","vannesa","gonzales","","calle 91-54-11","","3007809319","","","","1","2018-11-09 09:18:06");
INSERT INTO person VALUES("81","","lourdes astris","arias arias","","calle97-42f43 mirador del mar 2","","3022034527","","","","1","2018-11-09 09:38:04");
INSERT INTO person VALUES("82","","astris","pineda","","medellin","","3116851477","","","","1","2018-11-09 09:47:39");
INSERT INTO person VALUES("83","","carmen ines","pastrana","","calle103-49e- 29 ","","3046379551","","","","1","2018-11-09 10:40:23");
INSERT INTO person VALUES("84","","ana","perez","","calle104 48e 52 ","","3107380239","","","","1","2018-11-09 14:20:38");
INSERT INTO person VALUES("85","","michell","fuentes","","cra 45 nro 99c 84","","3023343534","","","","1","2018-11-09 16:50:07");
INSERT INTO person VALUES("86","","marina ","urbina","","clle 96 nro 42f 217","","3103504855","","","","1","2018-11-09 17:14:26");
INSERT INTO person VALUES("87","","nadia","baez","","tranversal94-99c70 torre 4 -114","","3012339488","","","","1","2018-11-10 08:36:32");
INSERT INTO person VALUES("88","","gloria","zambrano","","cra 72 nro 88 61","","3024513835","","gloria_lopez128@hotmail.com","","1","2018-11-10 11:03:38");
INSERT INTO person VALUES("89","","narly patricia","torres","","clle 91 nro 46 110","","3173667979","","ansove772@hotmail.com","","1","2018-11-10 12:51:27");
INSERT INTO person VALUES("90","","melisa","vargas","","calle 98 nro 42g 105","","3042083788","","m.vargas.bandera95@gmail.com","","1","2018-11-10 14:12:43");
INSERT INTO person VALUES("91","","dayana","martinez","","calle98-42g-105","","3206182923","","","","1","2018-11-10 14:53:03");
INSERT INTO person VALUES("92","","susana","perez","","z","","7869759771","","z","","1","2018-11-10 16:12:14");
INSERT INTO person VALUES("93","","liliana","diaz","","trasnversal 44 nro 102-86","","3013740786","","liludivihotmail.com","","1","2018-11-10 16:24:57");
INSERT INTO person VALUES("94","","julieth","jaimes","","transversal 44 nro 99 c 70","","3006354251","","","","1","2018-11-10 16:50:25");
INSERT INTO person VALUES("95","","jazmin","valencia","","trasnversall 44 nro 94-115","","3017851870","","","","1","2018-11-10 17:27:09");
INSERT INTO person VALUES("96","","angelica","roncallo","","Calle 78 # 57-95","","3015015477","","angelicaroncallo@yahoo.es","","1","2018-11-11 10:41:02");
INSERT INTO person VALUES("97","","Jackelin","Bruges","","n","","3007876504","","n","","1","2018-11-11 12:28:31");
INSERT INTO person VALUES("98","","Issy","Ripoll","","n","","3023765649","","n","","1","2018-11-11 12:39:51");
DROP TABLE IF EXISTS product;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `barcode` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `inventary_min` int(11) NOT NULL DEFAULT '10',
  `price_in` float NOT NULL,
  `price_out` float DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `talla_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  KEY `talla_id` (`talla_id`),
  KEY `color` (`color_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`talla_id`) REFERENCES `tallas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `product_ibfk_4` FOREIGN KEY (`color_id`) REFERENCES `colores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=latin1;

INSERT INTO product VALUES("3","","","Set flores anastasia","","1","1","97400","pza","1","1","3","27","2018-10-15 07:49:00","1");
INSERT INTO product VALUES("5","","","Bluson rayas summer","","1","1","118000","pza","2","1","9","14","2018-10-15 08:21:00","1");
INSERT INTO product VALUES("6","","","Vestido hojas sole","","1","1","135000","pza","3","1","10","1","2018-10-15 08:24:00","1");
INSERT INTO product VALUES("8","","","Vestido hojas sole","","1","1","135000","pza","3","1","10","3","2018-10-15 08:25:00","1");
INSERT INTO product VALUES("9","","","Vestido hojas sole","","1","1","135000","pza","3","1","10","4","2018-10-15 08:25:00","1");
INSERT INTO product VALUES("10","","","Vestido hojas sun","","1","1","135000","pza","4","1","10","2","2018-10-15 08:26:00","1");
INSERT INTO product VALUES("11","","","Vestido hojas sun","","1","1","135000","pza","4","1","10","3","2018-10-15 08:26:00","1");
INSERT INTO product VALUES("12","","","Vestido hojas sun","","1","1","135000","pza","4","1","10","4","2018-10-15 08:26:00","1");
INSERT INTO product VALUES("14","","","Vestido combinado jean","","1","1","68300","pza","2","1","10","27","2018-10-15 08:28:00","1");
INSERT INTO product VALUES("15","","","Set flor bordado","","1","1","129900","pza","5","1","3","2","2018-10-15 08:29:00","1");
INSERT INTO product VALUES("16","","","Set flor bordado","","1","1","129900","pza","5","1","3","3","2018-10-15 08:29:00","1");
INSERT INTO product VALUES("17","","","Set flor bordado","","1","1","129900","pza","5","1","3","4","2018-10-15 08:30:00","1");
INSERT INTO product VALUES("18","","","Blusa rayas","","1","1","119900","pza","2","1","4","2","2018-10-15 08:30:00","1");
INSERT INTO product VALUES("19","","","Blusa rayas","","1","1","119900","pza","2","1","4","3","2018-10-15 08:31:00","1");
INSERT INTO product VALUES("20","","","Blusa rayas","","1","1","119900","pza","2","1","4","4","2018-10-15 08:31:00","1");
INSERT INTO product VALUES("21","","","Blusa satin noche","","1","1","109900","pza","2","1","4","2","2018-10-15 08:32:00","1");
INSERT INTO product VALUES("22","","","Blusa satin noche","","1","1","109900","pza","2","1","4","3","2018-10-15 08:32:00","1");
INSERT INTO product VALUES("23","","","Blusa satin noche","","1","1","109900","pza","2","1","4","4","2018-10-15 08:33:00","1");
INSERT INTO product VALUES("24","","","Blusa satin noche","","1","1","109900","pza","6","1","4","2","2018-10-15 08:33:00","1");
INSERT INTO product VALUES("25","","","Blusa satin noche","","1","1","109900","pza","6","1","4","3","2018-10-15 08:33:00","1");
INSERT INTO product VALUES("26","","","Blusa satin noche","","1","1","109900","pza","6","1","4","4","2018-10-15 08:34:00","1");
INSERT INTO product VALUES("27","","","Blusa plisada romantic","","1","1","99900","pza","5","1","4","2","2018-10-15 08:35:00","1");
INSERT INTO product VALUES("28","","","Blusa plisada romantic","","1","1","99900","pza","5","1","4","3","2018-10-15 08:35:00","1");
INSERT INTO product VALUES("29","","","Blusa plisada romantic","","1","1","99900","pza","5","1","4","4","2018-10-15 08:35:00","1");
INSERT INTO product VALUES("30","","","Set rayas fresh","","1","1","139900","pza","7","1","3","3","2018-10-15 08:36:00","1");
INSERT INTO product VALUES("31","","","Set rayas fresh","","1","1","139900","pza","7","1","3","4","2018-10-15 08:36:00","1");
INSERT INTO product VALUES("32","","","Camisa manga larga Suzane","","1","1","125000","pza","7","1","11","2","2018-10-15 08:37:00","1");
INSERT INTO product VALUES("33","","","Set lunares California","","1","1","135000","pza","8","1","3","2","2018-10-15 08:38:00","1");
INSERT INTO product VALUES("34","","","Set lunares California","","1","1","135000","pza","8","1","3","3","2018-10-15 08:39:00","1");
INSERT INTO product VALUES("35","","","Set lunares California","","1","1","135000","pza","8","1","3","4","2018-10-15 08:39:00","1");
INSERT INTO product VALUES("36","","","Set plisado tenista","","1","1","119900","pza","8","1","3","3","2018-10-15 08:40:00","1");
INSERT INTO product VALUES("37","","","Set plisado tenista","","1","1","119900","pza","8","1","3","4","2018-10-15 08:40:00","1");
INSERT INTO product VALUES("38","","","Vestido donna","","1","1","129900","pza","6","1","10","2","2018-10-15 08:41:00","1");
INSERT INTO product VALUES("39","","","Vestido donna","","1","1","129900","pza","6","1","10","3","2018-10-15 08:41:00","1");
INSERT INTO product VALUES("40","","","Vestido donna","","1","1","129900","pza","6","1","10","4","2018-10-15 08:42:00","1");
INSERT INTO product VALUES("41","","","Top encaje esencia","","1","1","99000","pza","9","1","5","2","2018-10-15 08:42:00","1");
INSERT INTO product VALUES("42","","","Top encaje esencia","","1","1","99000","pza","9","1","5","3","2018-10-15 08:43:00","1");
INSERT INTO product VALUES("43","","","Set tanning estampado","","1","1","169900","pza","11","1","3","1","2018-10-15 08:44:00","1");
INSERT INTO product VALUES("44","","","Set tanning estampado","","1","1","169900","pza","11","1","3","3","2018-10-15 08:44:00","1");
INSERT INTO product VALUES("45","","","Set tanning estampado","","1","1","169900","pza","11","1","3","2","2018-10-15 08:45:00","1");
INSERT INTO product VALUES("46","","","Vestido bordado primaveral","","1","1","199900","pza","2","1","10","2","2018-10-15 08:45:00","1");
INSERT INTO product VALUES("47","","","Vestido bordado primaveral","","1","1","199900","pza","2","1","10","3","2018-10-15 08:46:00","1");
INSERT INTO product VALUES("48","","","Blusa satin electra","","1","1","69900","pza","9","1","4","3","2018-10-15 08:47:00","1");
INSERT INTO product VALUES("49","","","Blusa satin electra","","1","1","55900","pza","9","1","10","4","2018-10-15 08:47:00","1");
INSERT INTO product VALUES("50","","","Set tierra","","1","1","159900","pza","10","1","3","2","2018-10-15 08:48:00","1");
INSERT INTO product VALUES("51","","","Set tierra","","1","1","159900","pza","10","1","3","3","2018-10-15 08:48:00","1");
INSERT INTO product VALUES("52","","","Set tierra","","1","1","159900","pza","10","1","3","4","2018-10-15 08:49:00","1");
INSERT INTO product VALUES("53","","","Top picnic","","1","1","75000","pza","11","1","5","3","2018-10-15 08:50:00","1");
INSERT INTO product VALUES("54","","","Top picnic","","1","1","75000","pza","11","1","5","4","2018-10-15 08:50:00","1");
INSERT INTO product VALUES("55","","","Top picnic","","1","1","75000","pza","8","1","5","2","2018-10-15 09:14:00","1");
INSERT INTO product VALUES("56","","","Top picnic","","1","1","75000","pza","8","1","5","3","2018-10-15 09:32:00","1");
INSERT INTO product VALUES("57","","","Top picnic","","1","1","75000","pza","8","1","5","4","2018-10-15 09:34:00","1");
INSERT INTO product VALUES("58","","","Enterito estampado rayas Stacy","","1","1","135000","pza","2","1","8","2","2018-10-15 09:44:00","1");
INSERT INTO product VALUES("59","","","Enterito estampado rayas Stacy","","1","1","135000","pza","2","1","8","3","2018-10-15 09:54:00","1");
INSERT INTO product VALUES("60","","","Vestido picnic rosa","","1","1","129900","pza","6","1","10","2","2018-10-15 09:59:00","1");
INSERT INTO product VALUES("61","","","Vestido picnic rosa","","1","1","129900","pza","6","1","10","3","2018-10-15 10:01:00","1");
INSERT INTO product VALUES("62","","","Vestido picnic rosa","","1","1","129900","pza","6","1","10","4","2018-10-15 10:03:00","1");
INSERT INTO product VALUES("63","","","Vestido tirantes Maria","","1","1","115000","pza","7","1","10","2","2018-10-15 10:07:00","1");
INSERT INTO product VALUES("64","","","Vestido tirantes Maria","","1","1","115000","pza","7","1","10","3","2018-10-15 10:15:00","1");
INSERT INTO product VALUES("65","","","Vestido tirantes Maria","","1","1","115000","pza","7","1","10","4","2018-10-15 10:22:00","1");
INSERT INTO product VALUES("68","","","Vestido tirantes Maria","","1","1","115000","pza","12","1","10","3","2018-10-15 10:27:00","1");
INSERT INTO product VALUES("69","","","Vestido tirantes Maria","","1","1","115000","pza","12","1","10","4","2018-10-15 10:55:00","1");
INSERT INTO product VALUES("70","","","Blusa maya tejidas","","1","1","89900","pza","13","1","4","2","2018-10-15 10:57:00","1");
INSERT INTO product VALUES("71","","","Blusa maya tejidas","","1","1","89900","pza","13","1","4","3","2018-10-15 10:57:00","1");
INSERT INTO product VALUES("75","","","Short Victorina","","1","1","69900","pza","1","1","1","3","2018-10-15 10:59:00","1");
INSERT INTO product VALUES("76","","","Short Victorina","","1","1","69900","pza","1","1","1","4","2018-10-15 11:00:00","1");
INSERT INTO product VALUES("77","","","Jumpsuit escosia","","1","1","139900","pza","9","1","12","2","2018-10-15 11:02:00","1");
INSERT INTO product VALUES("78","","","Jumpsuit escosia","","1","1","139900","pza","9","1","12","3","2018-10-15 11:03:00","1");
INSERT INTO product VALUES("79","","","Jumpsuit escosia","","1","1","139900","pza","9","1","12","4","2018-10-15 11:03:00","1");
INSERT INTO product VALUES("80","","","Vestido short rayas sun","","1","1","115000","pza","11","1","13","3","2018-10-15 11:04:00","1");
INSERT INTO product VALUES("81","","","Vestido short rayas sun","","1","1","115000","pza","11","1","13","4","2018-10-15 11:04:00","1");
INSERT INTO product VALUES("82","","","Vestido estampado spring","","1","1","119900","pza","11","1","10","2","2018-10-15 11:05:00","1");
INSERT INTO product VALUES("83","","","Vestido estampado spring","","1","1","119900","pza","11","1","10","3","2018-10-15 11:06:00","1");
INSERT INTO product VALUES("84","","","Vestido estampado spring","","1","1","119900","pza","2","1","10","3","2018-10-15 11:06:00","1");
INSERT INTO product VALUES("85","","","Vestido estampado spring","","1","1","119900","pza","2","1","10","4","2018-10-15 11:07:00","1");
INSERT INTO product VALUES("86","","","Set diosa","","1","1","169900","pza","6","1","3","2","2018-10-15 11:08:00","1");
INSERT INTO product VALUES("87","","","Set diosa","","1","1","169900","pza","6","1","3","3","2018-10-15 11:08:00","1");
INSERT INTO product VALUES("88","","","Set diosa","","1","1","169900","pza","6","1","3","4","2018-10-15 11:08:00","1");
INSERT INTO product VALUES("89","","","Short dulac","","1","1","89900","pza","3","1","1","2","2018-10-15 11:09:00","1");
INSERT INTO product VALUES("90","","","Short dulac","","1","1","89900","pza","3","1","1","3","2018-10-15 11:10:00","1");
INSERT INTO product VALUES("91","","","Short dulac","","1","1","89900","pza","3","1","1","4","2018-10-15 11:10:00","1");
INSERT INTO product VALUES("92","","","Pantalon babucha","","1","1","63700","pza","6","1","14","27","2018-10-15 11:11:00","1");
INSERT INTO product VALUES("95","","","Top malla dulce","","1","1","119900","pza","7","1","5","2","2018-10-15 11:12:00","1");
INSERT INTO product VALUES("96","","","Top malla dulce","","1","1","119900","pza","7","1","5","3","2018-10-15 11:12:00","1");
INSERT INTO product VALUES("97","","","Top malla dulce","","1","1","119900","pza","7","1","5","4","2018-10-15 11:13:00","1");
INSERT INTO product VALUES("98","","","Jean desgastado California","","1","1","109900","pza","14","1","6","15","2018-10-15 11:15:00","1");
INSERT INTO product VALUES("99","","","Jean desgastado California","","1","1","109900","pza","14","1","6","16","2018-10-15 11:16:00","1");
INSERT INTO product VALUES("100","","","Jean desgastado California","","1","1","115000","pza","15","1","6","15","2018-10-15 11:17:00","1");
INSERT INTO product VALUES("101","","","Jean desgastado California","","1","1","115000","pza","15","1","6","16","2018-10-15 11:17:00","1");
INSERT INTO product VALUES("102","","","Jean desgastado California","","1","1","115000","pza","15","1","6","17","2018-10-15 11:18:00","1");
INSERT INTO product VALUES("103","","","Falda jean ojales Beverly","","1","1","115000","pza","2","1","2","2","2018-10-15 11:19:00","1");
INSERT INTO product VALUES("104","","","Falda jean ojales Beverly","","1","1","115000","pza","2","1","2","3","2018-10-15 11:19:00","1");
INSERT INTO product VALUES("105","","","Falda jean ojales Beverly","","1","1","115000","pza","2","1","2","4","2018-10-15 11:20:00","1");
INSERT INTO product VALUES("106","","","Falda jean ojales Beverly","","1","1","115000","pza","16","1","2","2","2018-10-15 11:20:00","1");
INSERT INTO product VALUES("107","","","Falda jean ojales Beverly","","1","1","115000","pza","16","1","2","3","2018-10-15 11:21:00","1");
INSERT INTO product VALUES("108","","","Top encaje blonda","","1","1","105000","pza","6","1","5","2","2018-10-15 11:21:00","1");
INSERT INTO product VALUES("109","","","Top encaje blonda","","1","1","105000","pza","6","1","5","3","2018-10-15 11:22:00","1");
INSERT INTO product VALUES("110","","","Top encaje blonda","","1","1","105000","pza","6","1","5","4","2018-10-15 11:22:00","1");
INSERT INTO product VALUES("111","","","Blusa corredera basic","","1","1","55000","pza","7","1","4","14","2018-10-15 11:23:00","1");
INSERT INTO product VALUES("112","","","Short ojales Miami","","1","1","95000","pza","7","1","1","2","2018-10-15 11:24:00","1");
INSERT INTO product VALUES("113","","","Short ojales Miami","","1","1","95000","pza","7","1","1","3","2018-10-15 11:25:00","1");
INSERT INTO product VALUES("114","","","Short ojales Miami","","1","1","95000","pza","7","1","1","4","2018-10-15 11:26:00","1");
INSERT INTO product VALUES("115","","","Short ojales Miami","","1","1","95000","pza","6","1","1","2","2018-10-15 11:27:00","1");
INSERT INTO product VALUES("116","","","Short ojales Miami","","1","1","95000","pza","6","1","1","3","2018-10-15 11:27:00","1");
INSERT INTO product VALUES("117","","","Short ojales Miami","","1","1","95000","pza","6","1","1","4","2018-10-15 11:27:00","1");
INSERT INTO product VALUES("118","","","Short rayas comfort","","1","1","60000","pza","2","1","1","2","2018-10-15 11:28:00","1");
INSERT INTO product VALUES("119","","","Short jean LA","","1","1","109900","pza","2","1","1","3","2018-10-15 11:29:00","1");
INSERT INTO product VALUES("120","","","Short jean LA","","1","1","109900","pza","2","1","1","4","2018-10-15 11:30:00","1");
INSERT INTO product VALUES("121","","","Camisa Danna prendedor","","1","1","59900","pza","7","1","11","2","2018-10-15 13:08:00","1");
INSERT INTO product VALUES("122","","","Camisa Danna prendedor","","1","1","59900","pza","7","1","11","3","2018-10-15 13:08:00","1");
INSERT INTO product VALUES("123","","","Camisa Danna prendedor","","1","1","59900","pza","7","1","11","4","2018-10-15 13:09:00","1");
INSERT INTO product VALUES("124","","","Blusa ojales ortensia","","1","1","79900","pza","24","1","4","2","2018-10-15 13:10:00","1");
INSERT INTO product VALUES("125","","","Blusa ojales ortensia","","1","1","79900","pza","24","1","4","3","2018-10-15 13:11:00","1");
INSERT INTO product VALUES("126","","","Top elastico princesa","","1","1","47900","pza","24","1","5","27","2018-10-15 13:11:00","1");
INSERT INTO product VALUES("128","","","Short cotton","","1","1","59900","pza","8","1","1","2","2018-10-15 13:12:00","1");
INSERT INTO product VALUES("129","","","Short cotton","","1","1","59900","pza","8","1","1","3","2018-10-15 13:13:00","1");
INSERT INTO product VALUES("130","","","Short cotton","","1","1","59900","pza","8","1","1","4","2018-10-15 13:13:00","1");
INSERT INTO product VALUES("131","","","Short estampado paisaje","","1","1","89900","pza","7","1","1","2","2018-10-15 13:14:00","1");
INSERT INTO product VALUES("132","","","Short estampado paisaje","","1","1","89900","pza","7","1","1","4","2018-10-15 13:14:00","1");
INSERT INTO product VALUES("133","","","Top arandela Maggie","","1","1","71300","pza","24","1","5","2","2018-10-15 13:15:00","1");
INSERT INTO product VALUES("134","","","Short oceano","","1","1","79900","pza","2","1","1","2","2018-10-15 13:24:00","1");
INSERT INTO product VALUES("135","","","Short oceano","","1","1","79900","pza","2","1","1","3","2018-10-15 13:25:00","1");
INSERT INTO product VALUES("136","","","Enterito corto cuadros","","1","1","109900","pza","16","1","8","3","2018-10-15 13:26:00","1");
INSERT INTO product VALUES("137","","","Enterito corto cuadros","","1","1","109900","pza","16","1","8","4","2018-10-15 13:26:00","1");
INSERT INTO product VALUES("138","","","Set pantalon rayas estilo","","1","1","90900","pza","16","1","3","2","2018-10-15 13:27:00","1");
INSERT INTO product VALUES("139","","","Set pantalon rayas estilo","","1","1","90900","pza","16","1","3","3","2018-10-15 13:27:00","1");
INSERT INTO product VALUES("140","","","Set sunset estampado","","1","1","105000","pza","17","1","3","3","2018-10-15 13:28:00","1");
INSERT INTO product VALUES("141","","","Set sunset estampado","","1","1","105000","pza","17","1","3","4","2018-10-15 13:29:00","1");
INSERT INTO product VALUES("142","","","Jean skinny Justina","","1","1","109900","pza","16","1","6","7","2018-10-15 13:30:00","1");
INSERT INTO product VALUES("143","","","Jean skinny Justina","","1","1","109900","pza","16","1","6","8","2018-10-15 13:30:00","1");
INSERT INTO product VALUES("144","","","Jean skinny Justina","","1","1","109900","pza","16","1","6","9","2018-10-15 13:31:00","1");
INSERT INTO product VALUES("145","","","Jean letra bordada Coco","","1","1","129900","pza","18","1","6","7","2018-10-15 13:33:00","1");
INSERT INTO product VALUES("146","","","Jean letra bordada Coco","","1","1","129900","pza","18","1","6","8","2018-10-15 13:34:00","1");
INSERT INTO product VALUES("147","","","Jean letra bordada Coco","","1","1","129900","pza","18","1","6","9","2018-10-15 13:36:00","1");
INSERT INTO product VALUES("148","","","Jean Tita","","1","1","129900","pza","2","1","6","7","2018-10-15 13:37:00","1");
INSERT INTO product VALUES("149","","","Jean Tita","","1","1","129900","pza","2","1","6","8","2018-10-15 13:37:00","1");
INSERT INTO product VALUES("150","","","Jean Tita","","1","1","129900","pza","2","1","6","9","2018-10-15 13:37:00","1");
INSERT INTO product VALUES("151","","","Jean Light Blue","","1","1","129900","pza","25","1","6","7","2018-10-15 13:39:00","1");
INSERT INTO product VALUES("152","","","Jean Light Blue","","1","1","129900","pza","25","1","6","8","2018-10-15 13:40:00","1");
INSERT INTO product VALUES("153","","","Jean Light Blue","","1","1","129900","pza","25","1","6","9","2018-10-15 13:41:00","1");
INSERT INTO product VALUES("154","","","Jean Chupin indigo","","1","1","109900","pza","19","1","6","7","2018-10-15 13:41:00","1");
INSERT INTO product VALUES("155","","","Jean Chupin indigo","","1","1","109900","pza","19","1","6","8","2018-10-15 13:42:00","1");
INSERT INTO product VALUES("156","","","Jean Chupin indigo","","1","1","109900","pza","19","1","6","9","2018-10-15 13:42:00","1");
INSERT INTO product VALUES("157","","","Jean Victoria engomado","","1","1","139900","pza","7","1","6","7","2018-10-15 13:43:00","1");
INSERT INTO product VALUES("158","","","Jean Victoria engomado","","1","1","139900","pza","7","1","6","8","2018-10-15 13:43:00","1");
INSERT INTO product VALUES("159","","","Jean Victoria engomado","","1","1","139900","pza","7","1","6","9","2018-10-15 13:44:00","1");
INSERT INTO product VALUES("160","","","Short Lorenza indigo","","1","1","95000","pza","19","1","1","7","2018-10-15 13:45:00","1");
INSERT INTO product VALUES("161","","","Short Lorenza indigo","","1","1","95000","pza","19","1","1","8","2018-10-15 13:46:00","1");
INSERT INTO product VALUES("162","","","Short Lorenza indigo","","1","1","95000","pza","19","1","1","9","2018-10-15 13:46:00","1");
INSERT INTO product VALUES("163","","","Short Alba","","1","1","105000","pza","16","1","1","7","2018-10-15 13:47:00","1");
INSERT INTO product VALUES("164","","","Short Alba","","1","1","105000","pza","16","1","1","8","2018-10-15 13:47:00","1");
INSERT INTO product VALUES("165","","","Short Alba","","1","1","105000","pza","16","1","1","9","2018-10-15 13:48:00","1");
INSERT INTO product VALUES("166","","","Falda ojales white","","1","1","119900","pza","7","1","2","2","2018-10-15 13:48:00","1");
INSERT INTO product VALUES("167","","","Falda ojales white","","1","1","119900","pza","7","1","2","3","2018-10-15 13:49:00","1");
INSERT INTO product VALUES("168","","","Falda corredera rock","","1","1","129900","pza","16","1","2","7","2018-10-15 13:49:00","1");
INSERT INTO product VALUES("169","","","Falda corredera rock","","1","1","129900","pza","16","1","2","8","2018-10-15 13:50:00","1");
INSERT INTO product VALUES("170","","","Vestido Morley","","1","1","129900","pza","7","1","10","15","2018-10-15 14:06:00","1");
INSERT INTO product VALUES("171","","","Vestido Morley","","1","1","129900","pza","7","1","10","18","2018-10-15 14:10:00","1");
INSERT INTO product VALUES("172","","","Vestido Morley","","1","1","129900","pza","12","1","10","15","2018-10-15 14:11:00","1");
INSERT INTO product VALUES("173","","","Vestido Morley","","1","1","129900","pza","12","1","10","18","2018-10-15 14:12:00","1");
INSERT INTO product VALUES("174","","","Jumpsuit rayas dark","","1","1","129900","pza","16","1","12","2","2018-10-15 14:12:00","1");
INSERT INTO product VALUES("175","","","Camiseta estampada Trois","","1","1","49900","pza","12","1","15","15","2018-10-15 14:14:00","1");
INSERT INTO product VALUES("176","","","Camiseta estampada Trois","","1","1","49900","pza","12","1","15","18","2018-10-15 14:15:00","1");
INSERT INTO product VALUES("177","","","Camiseta estampada Trois","","1","1","49900","pza","24","1","15","15","2018-10-15 14:15:00","1");
INSERT INTO product VALUES("178","","","Camiseta estampada Trois","","1","1","49900","pza","24","1","15","18","2018-10-15 14:16:00","1");
INSERT INTO product VALUES("179","","","Plataforma ojalillo","","1","1","119900","pza","2","1","16","19","2018-10-15 14:17:00","1");
INSERT INTO product VALUES("180","","","Plataforma ojalillo","","1","1","119900","pza","2","1","16","20","2018-10-15 14:19:00","1");
INSERT INTO product VALUES("181","","","Plataforma ojalillo","","1","1","119900","pza","2","1","16","21","2018-10-15 14:19:00","1");
INSERT INTO product VALUES("182","","","Plataforma ojalillo","","1","1","119900","pza","7","1","16","22","2018-10-15 14:20:00","1");
INSERT INTO product VALUES("183","","","Plataforma Palm Spring","","1","1","89900","pza","6","1","16","19","2018-10-15 14:20:00","1");
INSERT INTO product VALUES("184","","","Plataforma Palm Spring","","1","1","89900","pza","6","1","16","20","2018-10-15 14:21:00","1");
INSERT INTO product VALUES("185","","","Plataforma Palm Spring","","1","1","89900","pza","6","1","16","21","2018-10-15 14:21:00","1");
INSERT INTO product VALUES("186","","","Plataforma Palm Spring","","1","1","89900","pza","21","1","16","22","2018-10-15 14:22:00","1");
INSERT INTO product VALUES("187","","","Plataforma Palm Spring","","1","1","89900","pza","21","1","16","19","2018-10-15 14:22:00","1");
INSERT INTO product VALUES("188","","","Plataforma Palm Spring","","1","1","89900","pza","21","1","16","20","2018-10-15 14:24:00","1");
INSERT INTO product VALUES("189","","","Plataforma Palm Spring","","1","1","89900","pza","22","1","16","22","2018-10-15 14:27:00","1");
INSERT INTO product VALUES("190","","","Plataforma Palm Spring","","1","1","89900","pza","22","1","16","19","2018-10-15 14:28:00","1");
INSERT INTO product VALUES("191","","","Plataforma Palm Spring","","1","1","89900","pza","22","1","16","20","2018-10-15 14:28:00","1");
INSERT INTO product VALUES("192","","","Plataforma Palm Spring","","1","1","89900","pza","17","1","16","19","2018-10-15 14:29:00","1");
INSERT INTO product VALUES("193","","","Plataforma Palm Spring","","1","1","89900","pza","17","1","16","20","2018-10-15 14:29:00","1");
INSERT INTO product VALUES("194","","","Sandalia Red Leather","","1","1","65000","pza","11","1","17","22","2018-10-15 14:30:00","1");
INSERT INTO product VALUES("195","","","Sandalia Red Leather","","1","1","65000","pza","11","1","17","19","2018-10-15 14:32:00","1");
INSERT INTO product VALUES("196","","","Sandalia Talipei","","1","1","65000","pza","17","1","17","20","2018-10-15 14:33:00","1");
INSERT INTO product VALUES("197","","","Sandalia Gold","","1","1","65000","pza","23","1","17","19","2018-10-15 14:33:00","1");
INSERT INTO product VALUES("198","","","Sandalia Gold","","1","1","65000","pza","23","1","17","20","2018-10-15 14:34:00","1");
INSERT INTO product VALUES("199","","","Jean letra bordada Coco","","1","1","129900","pza","18","1","6","10","2018-10-15 14:35:00","1");
INSERT INTO product VALUES("200","","","Jean Tita","","1","1","129900","pza","2","1","6","10","2018-10-15 14:36:00","1");
INSERT INTO product VALUES("201","","","Jean Victoria engomado","","1","1","139900","pza","7","1","6","10","2018-10-15 14:36:00","1");
INSERT INTO product VALUES("202","","","Short lino amatista","","1","1","99900","pza","17","1","1","14","2018-10-15 14:38:00","1");
INSERT INTO product VALUES("203","","","Short lino amatista","","1","1","99900","pza","16","1","1","14","2018-10-15 14:38:00","1");
INSERT INTO product VALUES("204","","","Camiseta basic Ella","","1","1","49900","pza","20","1","15","14","2018-10-15 14:39:00","1");
INSERT INTO product VALUES("205","","","Camiseta basic Ella","","1","1","49900","pza","6","1","15","14","2018-10-15 14:40:00","1");
INSERT INTO product VALUES("206","","","Blusa peplum dos tonos","","1","1","89900","pza","7","1","4","4","2018-10-15 20:18:00","1");
INSERT INTO product VALUES("207","","","Blusa peplum dos tonos","","1","1","89900","pza","7","1","4","3","2018-10-15 20:19:00","1");
INSERT INTO product VALUES("208","","","Set lino gales","","1","1","129900","pza","17","1","3","14","2018-10-15 20:20:00","1");
INSERT INTO product VALUES("209","","","Short flower rosa","","1","1","79900","pza","6","1","1","2","2018-10-15 20:21:00","1");
INSERT INTO product VALUES("210","","","Short flower rosa","","1","1","79900","pza","6","1","1","3","2018-10-15 20:22:00","1");
INSERT INTO product VALUES("211","","","Short flower rosa","","1","1","79900","pza","6","1","1","4","2018-10-15 20:22:00","1");
INSERT INTO product VALUES("212","","","Vestido estampado spring","","1","1","119900","pza","11","1","10","4","2018-10-18 02:40:00","1");
INSERT INTO product VALUES("213","","","Blusa rock Glam","","1","1","55000","pza","26","1","4","14","2018-10-18 08:39:57","1");
INSERT INTO product VALUES("214","","","Top princesa","","1","1","55900","pza","6","1","5","2","2018-10-18 08:58:55","1");
INSERT INTO product VALUES("215","","","Top princesa","","1","1","55900","pza","6","1","5","3","2018-10-18 08:59:35","1");
INSERT INTO product VALUES("216","","","Top princesa","","1","1","55900","pza","6","1","5","4","2018-10-18 09:00:14","1");
INSERT INTO product VALUES("217","","","Top princesa","","1","1","55900","pza","16","1","5","3","2018-10-18 09:02:27","1");
INSERT INTO product VALUES("218","","","Top princesa","","1","1","55900","pza","16","1","5","4","2018-10-18 09:02:54","1");
INSERT INTO product VALUES("219","","","Top princesa","","1","1","55900","pza","7","1","5","2","2018-10-18 09:03:45","1");
INSERT INTO product VALUES("220","","","Top princesa","","1","1","55900","pza","7","1","5","3","2018-10-18 09:04:15","1");
INSERT INTO product VALUES("221","","","Top princesa","","1","1","55900","pza","7","1","5","4","2018-10-18 09:04:44","1");
INSERT INTO product VALUES("228","","","Aretes canutillo","","1","1","45000","pza","1","1","18","14","2018-10-18 09:41:33","1");
INSERT INTO product VALUES("229","","","Aretes palma de iraca","","1","1","55000","pza","1","1","18","14","2018-10-18 09:44:04","1");
INSERT INTO product VALUES("230","","","Pulsera","","1","1","25000","pza","1","1","21","14","2018-10-18 09:45:45","1");
INSERT INTO product VALUES("231","","","Mochila guipure","","1","1","139900","pza","1","1","19","14","2018-10-18 09:46:31","1");
INSERT INTO product VALUES("232","","","Bolso yoyo","","1","1","89900","pza","1","1","20","14","2018-10-18 09:47:07","1");
INSERT INTO product VALUES("233","","","Bolso minicanasta","","1","1","149900","pza","1","1","20","14","2018-10-18 09:47:44","1");
INSERT INTO product VALUES("234","","","Bolso ovalado turquesa","","1","1","139900","pza","1","1","20","14","2018-10-18 09:48:32","1");
INSERT INTO product VALUES("235","","","Aretes murano","","1","1","40000","pza","17","1","18","14","2018-10-20 13:06:59","1");
INSERT INTO product VALUES("236","","","Collar estrella de mar","","1","1","115000","pza","17","1","22","14","2018-10-20 13:08:17","1");
INSERT INTO product VALUES("237","","","Collar borda verde","","1","1","125000","pza","17","1","22","14","2018-10-20 13:09:14","1");
INSERT INTO product VALUES("238","","","Collar hoja perla","","1","1","120000","pza","6","1","22","14","2018-10-20 13:10:02","1");
INSERT INTO product VALUES("239","","","falda tubo","denin","1","34600","95000","pza","2","1","2","23","2018-10-21 15:55:17","1");
INSERT INTO product VALUES("240","","","falda tubo","denin","1","34600","95000","pza","2","1","2","22","2018-10-21 15:56:38","1");
INSERT INTO product VALUES("241","","","falda tubo","denin","1","34600","95000","pza","2","1","2","20","2018-10-21 15:57:17","1");
INSERT INTO product VALUES("242","","","falda tubo","denin","1","34600","95000","pza","2","1","2","25","2018-10-21 15:57:52","1");
INSERT INTO product VALUES("246","","","Arete flor palma de iraca","","1","21000","45000","pza","5","1","18","14","2018-10-22 14:47:41","1");
INSERT INTO product VALUES("249","","","Shoker","","1","1","28000","pza","5","1","22","14","2018-10-24 18:12:46","1");
INSERT INTO product VALUES("250","","","Vestido red love","","1","1","159900","pza","7","1","10","1","2018-10-25 17:23:57","1");
INSERT INTO product VALUES("251","","","Vestido red love","","1","1","159900","pza","7","1","10","2","2018-10-25 17:24:25","1");
INSERT INTO product VALUES("252","","","Vestido red love","","1","1","159900","pza","7","1","10","3","2018-10-25 17:24:48","1");
INSERT INTO product VALUES("253","","","Bluson popelina","","1","1","79900","pza","16","1","9","1","2018-10-25 17:25:35","1");
INSERT INTO product VALUES("254","","","Bluson popelina","","1","1","79900","pza","16","1","9","2","2018-10-25 17:25:58","1");
INSERT INTO product VALUES("255","","","Bluson popelina","","1","1","79900","pza","16","1","9","3","2018-10-25 17:26:27","1");
INSERT INTO product VALUES("256","","","Falda short sand","","1","1","139900","pza","27","1","2","1","2018-10-25 17:28:16","1");
INSERT INTO product VALUES("257","","","Falda short sand","","1","1","139900","pza","27","1","2","2","2018-10-25 17:28:42","1");
INSERT INTO product VALUES("258","","","Falda short sand","","1","1","139900","pza","27","1","2","3","2018-10-25 17:29:06","1");
INSERT INTO product VALUES("259","","","Blusa nacar","","1","1","99900","pza","7","1","4","1","2018-10-25 17:29:58","1");
INSERT INTO product VALUES("260","","","Blusa nacar","","1","1","99900","pza","7","1","4","2","2018-10-25 17:30:17","1");
INSERT INTO product VALUES("261","","","Blusa nacar","","1","1","99900","pza","7","1","4","3","2018-10-25 17:30:36","1");
INSERT INTO product VALUES("262","","","Pantalon punta de roma","","1","1","139900","pza","16","1","14","1","2018-10-25 17:31:39","1");
INSERT INTO product VALUES("263","","","Pantalon punta de roma","","1","1","139900","pza","16","1","14","2","2018-10-25 17:31:59","1");
INSERT INTO product VALUES("264","","","Pantalon punta de roma","","1","1","139900","pza","16","1","14","3","2018-10-25 17:32:16","1");
INSERT INTO product VALUES("265","","","Bluson lino olan","","1","1","139900","pza","7","1","9","1","2018-10-25 17:32:58","1");
INSERT INTO product VALUES("266","","","Bluson lino olan","","1","1","139900","pza","7","1","9","2","2018-10-25 17:33:24","1");
INSERT INTO product VALUES("267","","","Bluson lino olan","","1","1","139900","pza","7","1","9","3","2018-10-25 17:33:53","1");
INSERT INTO product VALUES("268","","","Top rose","","1","1","95900","pza","24","1","5","1","2018-10-25 17:34:31","1");
INSERT INTO product VALUES("269","","","Top rose","","1","1","95900","pza","24","1","5","2","2018-10-25 17:35:04","1");
INSERT INTO product VALUES("270","","","Top rose","","1","1","95900","pza","24","1","5","3","2018-10-25 17:35:31","1");
INSERT INTO product VALUES("271","","","bolso ovalo flor","","1","60000","149900","pza","5","1","20","14","2018-10-26 13:43:14","1");
INSERT INTO product VALUES("272","","","baul negro","","1","65000","169900","pza","16","1","20","14","2018-10-26 13:45:47","1");
INSERT INTO product VALUES("273","","","Bolso Playero Flowers","","1","90000","199900","pza","24","1","20","14","2018-10-26 13:47:00","1");
INSERT INTO product VALUES("274","","","Sandalia red leather","","1","1","65000","pza","11","1","17","20","2018-10-28 15:40:03","1");
INSERT INTO product VALUES("276","","","CAMISETA SHINE","ESCARCHA","1","19000","49900","pza","4","1","15","14","2018-11-03 16:23:31","1");
INSERT INTO product VALUES("277","","","Arete crochet","","1","16000","49900","pza","28","1","18","14","2018-11-07 15:28:02","1");
INSERT INTO product VALUES("278","","","Arete palma de iraca borla","","1","23000","59900","pza","28","1","18","14","2018-11-07 15:28:54","1");
INSERT INTO product VALUES("279","","","Shoker ","","1","15000","49900","pza","28","1","22","14","2018-11-07 15:30:02","1");
INSERT INTO product VALUES("280","","","Arete canutillo dorado","","1","16000","42900","pza","28","1","18","14","2018-11-07 15:30:38","1");
INSERT INTO product VALUES("281","","","Short  basic","","1","35000","89900","pza","7","1","1","2","2018-11-07 15:32:56","1");
INSERT INTO product VALUES("282","","","Short  basic","","1","35000","89900","pza","7","1","1","3","2018-11-07 15:33:31","1");
INSERT INTO product VALUES("283","","","Short  basic","","1","35000","89900","pza","1","1","1","2","2018-11-07 15:34:16","1");
INSERT INTO product VALUES("284","","","Short  basic","","1","35000","89900","pza","1","1","1","3","2018-11-07 15:34:50","1");
INSERT INTO product VALUES("286","","","Culotte estampado","","1","44000","119900","pza","28","1","14","2","2018-11-07 15:41:49","1");
INSERT INTO product VALUES("287","","","Culotte estampado","","1","44000","119900","pza","28","1","14","3","2018-11-07 15:42:20","1");
INSERT INTO product VALUES("288","","","Jumpsuit black and white","","1","75000","189900","pza","16","1","12","3","2018-11-07 15:43:35","1");
INSERT INTO product VALUES("289","","","Jumpsuit black and white","","1","75000","189900","pza","7","1","12","4","2018-11-07 15:44:14","1");
INSERT INTO product VALUES("290","","","Blusa rib","","1","19000","49900","pza","28","1","4","14","2018-11-07 15:44:52","1");
INSERT INTO product VALUES("291","","","Vestido volado tachas","","1","57300","149900","pza","2","1","10","2","2018-11-07 15:46:52","1");
INSERT INTO product VALUES("292","","","Vestido volado tachas","","1","57300","149900","pza","2","1","10","3","2018-11-07 15:48:21","1");
INSERT INTO product VALUES("293","","","Kimono hindue","","1","63200","179900","pza","5","1","23","14","2018-11-07 15:49:53","1");
INSERT INTO product VALUES("294","","","Blusa malla duo","","1","43400","129900","pza","7","1","4","14","2018-11-07 15:50:44","1");
INSERT INTO product VALUES("295","","","Blusa saco ELLA","","1","33200","95000","pza","7","1","4","2","2018-11-07 15:51:51","1");
INSERT INTO product VALUES("296","","","Blusa saco ELLA","","1","33200","95000","pza","16","1","4","2","2018-11-07 15:52:54","1");
INSERT INTO product VALUES("297","","","Blusa saco ELLA","","1","33200","95000","pza","16","1","4","3","2018-11-07 15:53:21","1");
INSERT INTO product VALUES("298","","","Blusa oxford canutillo","","1","49100","159900","pza","17","1","4","14","2018-11-07 15:55:31","1");
INSERT INTO product VALUES("299","","","Falda ojales white","","1","1","119900","pza","7","1","2","4","2018-11-07 15:58:17","1");
INSERT INTO product VALUES("300","","","Falda jean black","","1","1","129900","pza","16","1","2","25","2018-11-07 15:59:18","1");
INSERT INTO product VALUES("301","","","Pantalon blanco guipure","","1","33500","149900","pza","7","1","14","2","2018-11-07 16:00:55","1");
INSERT INTO product VALUES("302","","","Pantalon blanco guipure","","1","33500","149900","pza","7","1","14","3","2018-11-07 16:01:27","1");
INSERT INTO product VALUES("303","","","Falda camuflada","","1","33800","125000","pza","28","1","2","23","2018-11-07 16:02:26","1");
INSERT INTO product VALUES("304","","","Falda camuflada","","1","33800","125000","pza","28","1","2","22","2018-11-07 16:02:56","1");
INSERT INTO product VALUES("305","","","Falda camuflada","","1","33800","125000","pza","28","1","2","20","2018-11-07 16:03:23","1");
INSERT INTO product VALUES("306","","","Falda camuflada","","1","33800","125000","pza","28","1","2","25","2018-11-07 16:03:50","1");
INSERT INTO product VALUES("307","","","Falda camuflada","","1","33800","125000","pza","28","1","2","26","2018-11-07 16:04:55","1");
INSERT INTO product VALUES("308","","","Pantalon lino rayas","","1","50400","139900","pza","28","1","14","22","2018-11-07 16:06:02","1");
INSERT INTO product VALUES("309","","","Pantalon lino rayas","","1","50400","139900","pza","28","1","14","20","2018-11-07 16:06:27","1");
INSERT INTO product VALUES("310","","","Pantalon lino rayas","","1","50400","139900","pza","28","1","14","25","2018-11-07 16:06:56","1");
INSERT INTO product VALUES("311","","","Camisa gasa black","","1","40200","119900","pza","16","1","11","14","2018-11-07 16:07:50","1");
INSERT INTO product VALUES("312","","","Blusa blonda dorado","","1","26400","95000","pza","28","1","4","14","2018-11-07 16:09:12","1");
INSERT INTO product VALUES("313","","","Pantalon elite","","1","48200","119900","pza","7","1","14","2","2018-11-08 13:50:26","1");
INSERT INTO product VALUES("314","","","Pantalon elite","","1","48200","119900","pza","7","1","14","3","2018-11-08 13:50:53","1");
INSERT INTO product VALUES("315","","","Pantalon elite","","1","48200","119900","pza","7","1","14","4","2018-11-08 13:51:15","1");
INSERT INTO product VALUES("316","","","Pantalon elite","","1","48200","119900","pza","16","1","14","2","2018-11-08 13:53:31","1");
INSERT INTO product VALUES("317","","","Pantalon elite","","1","48200","119900","pza","16","1","14","3","2018-11-08 13:53:52","1");
INSERT INTO product VALUES("318","","","Pantalon elite","","1","48200","119900","pza","16","1","14","4","2018-11-08 13:54:12","1");
INSERT INTO product VALUES("319","","","Pantalon dackar","","1","1","40000","pza","28","1","14","27","2018-11-08 13:56:28","1");
INSERT INTO product VALUES("320","","","Set rayas office","","1","1","116900","pza","16","1","3","4","2018-11-08 13:58:34","1");
INSERT INTO product VALUES("321","","","Blusa malla gold","","1","1","63000","pza","23","1","4","2","2018-11-08 14:00:13","1");
INSERT INTO product VALUES("322","","","Jean detroit","","1","1","101250","pza","28","1","6","27","2018-11-08 14:01:06","1");
INSERT INTO product VALUES("323","","","Vestido brown","","1","1","61750","pza","28","1","10","27","2018-11-08 14:01:47","1");
INSERT INTO product VALUES("324","","","Vestido print orange","","1","1","112000","pza","28","1","10","3","2018-11-08 14:02:56","1");
INSERT INTO product VALUES("325","","","Short deep blue","","1","1","67900","pza","2","1","1","4","2018-11-08 14:03:42","1");
INSERT INTO product VALUES("326","","","Vestido pink","","1","1","76400","pza","24","1","10","2","2018-11-08 14:04:24","1");
INSERT INTO product VALUES("327","","","Short Victorina","","1","1","62900","pza","28","1","1","4","2018-11-08 14:06:54","1");
INSERT INTO product VALUES("328","","","Pava palma de iraca","","1","50000","110000","pza","5","1","24","14","2018-11-11 12:39:07","1");
DROP TABLE IF EXISTS sell;

CREATE TABLE `sell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `operation_type_id` int(11) DEFAULT '2',
  `box_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `tipo_pago` varchar(1) NOT NULL DEFAULT 'E',
  `monto_e` int(11) NOT NULL DEFAULT '0',
  `monto_t` int(11) NOT NULL DEFAULT '0',
  `seller` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `box_id` (`box_id`),
  KEY `operation_type_id` (`operation_type_id`),
  KEY `user_id` (`user_id`),
  KEY `person_id` (`person_id`),
  KEY `tipo_pago` (`tipo_pago`),
  CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`),
  CONSTRAINT `sell_ibfk_2` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_type` (`id`),
  CONSTRAINT `sell_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `sell_ibfk_4` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=latin1;

INSERT INTO sell VALUES("3","2","1","2","2","2018-10-17 05:40:03","E","169900","0","0");
INSERT INTO sell VALUES("4","2","1","2","2","2018-10-18 13:58:50","E","55000","0","0");
INSERT INTO sell VALUES("5","2","1","2","2","2018-10-18 14:10:02","E","1578100","0","0");
INSERT INTO sell VALUES("6","2","1","2","2","2018-10-18 14:56:20","E","302900","0","0");
INSERT INTO sell VALUES("7","2","1","2","3","2018-10-19 16:13:16","E","159900","0","0");
INSERT INTO sell VALUES("8","2","1","2","3","2018-10-19 16:41:15","E","115000","0","0");
INSERT INTO sell VALUES("9","2","1","2","3","2018-10-19 16:43:21","E","149900","0","0");
INSERT INTO sell VALUES("11","2","1","2","3","2018-10-19 16:55:14","E","109900","0","0");
INSERT INTO sell VALUES("12","2","1","2","3","2018-10-19 17:00:02","E","89900","0","0");
INSERT INTO sell VALUES("13","2","1","2","3","2018-10-19 17:07:41","E","125000","0","0");
INSERT INTO sell VALUES("14","2","1","2","3","2018-10-19 17:09:05","E","129900","0","0");
INSERT INTO sell VALUES("15","2","1","2","3","2018-10-19 17:15:19","E","109900","0","0");
INSERT INTO sell VALUES("16","2","1","2","3","2018-10-19 17:19:22","E","115000","0","0");
INSERT INTO sell VALUES("18","2","1","2","3","2018-10-19 17:21:47","E","118000","0","0");
INSERT INTO sell VALUES("20","2","1","2","3","2018-10-19 20:24:45","E","40000","0","0");
INSERT INTO sell VALUES("21","2","1","2","3","2018-10-19 20:25:39","T","0","55000","0");
INSERT INTO sell VALUES("22","4","1","2","4","2018-10-20 21:17:00","T","0","167900","0");
INSERT INTO sell VALUES("23","5","1","2","4","2018-10-20 21:33:59","E","129900","0","0");
INSERT INTO sell VALUES("24","6","1","2","4","2018-10-20 22:27:28","T","0","323900","0");
INSERT INTO sell VALUES("25","6","1","2","4","2018-10-20 22:36:11","T","0","55000","0");
INSERT INTO sell VALUES("26","7","1","2","4","2018-10-20 23:07:21","E","65000","0","0");
INSERT INTO sell VALUES("27","7","1","2","4","2018-10-20 23:09:07","E","0","0","0");
INSERT INTO sell VALUES("28","11","1","2","5","2018-10-21 16:11:41","T","0","119900","0");
INSERT INTO sell VALUES("29","12","1","2","5","2018-10-21 16:12:33","T","0","55000","0");
INSERT INTO sell VALUES("30","8","1","2","5","2018-10-21 18:11:02","E","129900","0","0");
INSERT INTO sell VALUES("31","13","1","2","5","2018-10-21 20:34:56","T","0","247900","0");
INSERT INTO sell VALUES("32","","1","2","5","2018-10-21 21:26:45","T","0","129900","0");
INSERT INTO sell VALUES("33","8","1","2","5","2018-10-21 23:56:35","E","129900","0","0");
INSERT INTO sell VALUES("34","","1","2","5","2018-10-21 19:44:00","T","0","614500","0");
INSERT INTO sell VALUES("35","","1","2","6","2018-10-22 09:46:20","T","0","115000","0");
INSERT INTO sell VALUES("36","2","1","2","2","2018-10-18 00:00:00","E","79900","0","0");
INSERT INTO sell VALUES("37","17","1","2","6","2018-10-22 00:00:00","E","200000","0","0");
INSERT INTO sell VALUES("38","3","1","1","","2018-10-22 00:00:00","E","8","0","0");
INSERT INTO sell VALUES("39","19","1","2","7","2018-10-23 00:00:00","E","259800","0","0");
INSERT INTO sell VALUES("40","20","1","2","7","2018-10-23 00:00:00","E","151000","0","0");
INSERT INTO sell VALUES("41","21","1","2","8","2018-10-24 00:00:00","T","0","274800","0");
INSERT INTO sell VALUES("42","12","1","2","8","2018-10-24 00:00:00","E","0","135000","0");
INSERT INTO sell VALUES("43","23","1","2","8","2018-10-24 00:00:00","E","50000","0","0");
INSERT INTO sell VALUES("44","24","1","2","8","2018-10-24 00:00:00","E","139900","0","0");
INSERT INTO sell VALUES("45","","1","2","8","2018-10-24 00:00:00","E","55000","0","0");
INSERT INTO sell VALUES("46","","1","2","8","2018-10-24 00:00:00","E","119900","0","0");
INSERT INTO sell VALUES("47","25","1","2","8","2018-10-24 00:00:00","T","0","414900","0");
INSERT INTO sell VALUES("48","26","1","2","8","2018-10-24 00:00:00","T","0","229800","0");
INSERT INTO sell VALUES("49","27","1","2","8","2018-10-24 00:00:00","E","139900","0","0");
INSERT INTO sell VALUES("50","28","1","2","8","2018-10-24 00:00:00","T","0","28000","0");
INSERT INTO sell VALUES("51","8","1","2","9","2018-10-25 05:33:08","T","0","95000","0");
INSERT INTO sell VALUES("52","29","1","2","9","2018-10-25 07:21:01","E","174900","0","0");
INSERT INTO sell VALUES("53","30","1","1","","2018-10-26 00:00:00","E","1","0","0");
INSERT INTO sell VALUES("54","30","1","1","","2018-10-26 00:00:00","E","1","0","0");
INSERT INTO sell VALUES("55","30","1","1","","2018-10-26 00:00:00","E","2","0","0");
INSERT INTO sell VALUES("56","32","1","2","10","2018-10-26 03:26:10","T","0","179800","0");
INSERT INTO sell VALUES("57","31","1","2","10","2018-10-26 03:41:12","T","0","379700","0");
INSERT INTO sell VALUES("58","33","1","1","","2018-10-26 00:00:00","E","3","0","0");
INSERT INTO sell VALUES("59","","1","2","10","2018-10-26 05:59:11","T","0","254900","0");
INSERT INTO sell VALUES("60","","1","2","10","2018-10-26 06:15:13","T","0","139900","0");
INSERT INTO sell VALUES("61","34","1","2","10","2018-10-26 06:20:45","T","0","244900","0");
INSERT INTO sell VALUES("62","35","1","2","10","2018-10-26 06:55:29","T","0","55900","0");
INSERT INTO sell VALUES("63","8","1","2","10","2018-10-26 07:12:55","E","129900","0","0");
INSERT INTO sell VALUES("64","36","1","2","10","2018-10-26 07:33:57","T","0","135000","0");
INSERT INTO sell VALUES("65","37","1","2","10","2018-10-26 07:48:11","E","125000","0","0");
INSERT INTO sell VALUES("66","38","1","2","10","2018-10-26 08:05:22","T","0","55900","0");
INSERT INTO sell VALUES("67","22","1","2","11","2018-10-27 10:50:34","E","49900","0","0");
INSERT INTO sell VALUES("68","39","1","2","11","2018-10-27 12:40:43","E","95000","0","0");
INSERT INTO sell VALUES("69","40","1","2","11","2018-10-27 03:37:49","T","0","304800","0");
INSERT INTO sell VALUES("70","41","1","2","11","2018-10-27 04:21:22","E","89900","0","0");
INSERT INTO sell VALUES("71","42","1","2","11","2018-10-27 04:45:32","T","0","139900","0");
INSERT INTO sell VALUES("72","43","1","2","11","2018-10-27 07:49:59","T","0","329700","0");
INSERT INTO sell VALUES("73","44","1","2","12","2018-10-28 12:44:59","T","0","135000","0");
INSERT INTO sell VALUES("74","44","1","2","12","2018-10-28 12:50:18","T","0","99900","0");
INSERT INTO sell VALUES("75","","1","2","12","2018-10-28 02:12:48","E","119900","0","0");
INSERT INTO sell VALUES("76","46","1","2","13","2018-10-29 03:30:36","T","0","129900","0");
INSERT INTO sell VALUES("77","47","1","2","13","2018-10-29 06:09:07","E","519700","0","0");
INSERT INTO sell VALUES("78","29","1","2","14","2018-10-30 09:48:27","E","115000","0","0");
INSERT INTO sell VALUES("79","49","1","2","14","2018-10-30 02:14:14","T","0","659700","0");
INSERT INTO sell VALUES("80","50","1","2","14","2018-10-30 04:51:56","E","169900","0","0");
INSERT INTO sell VALUES("81","","1","2","14","2018-10-30 08:04:10","E","479700","0","0");
INSERT INTO sell VALUES("82","52","1","2","15","2018-10-31 05:27:34","T","0","89900","0");
INSERT INTO sell VALUES("83","53","1","2","15","2018-10-31 05:55:27","T","0","119900","0");
INSERT INTO sell VALUES("84","53","1","2","15","2018-10-31 05:57:57","T","0","55000","0");
INSERT INTO sell VALUES("85","54","1","2","16","2018-11-01 10:04:07","T","0","45000","0");
INSERT INTO sell VALUES("86","55","1","2","16","2018-11-01 01:55:47","E","115000","0","0");
INSERT INTO sell VALUES("87","48","1","2","16","2018-11-01 02:58:19","E","274900","0","0");
INSERT INTO sell VALUES("88","57","1","2","16","2018-11-01 07:40:28","T","0","159900","0");
INSERT INTO sell VALUES("89","58","1","2","17","2018-11-02 01:30:34","E","99000","0","0");
INSERT INTO sell VALUES("90","8","1","2","17","2018-11-02 03:09:12","E","144900","0","0");
INSERT INTO sell VALUES("91","59","1","2","17","2018-11-02 04:48:08","E","75000","0","0");
INSERT INTO sell VALUES("92","12","1","2","17","2018-11-02 06:15:20","E","55000","0","0");
INSERT INTO sell VALUES("93","20","1","2","17","2018-11-02 06:20:57","T","0","80000","0");
INSERT INTO sell VALUES("94","62","1","2","17","2018-11-02 06:26:50","T","0","139900","0");
INSERT INTO sell VALUES("95","63","1","2","17","2018-11-02 06:52:48","T","0","1174300","0");
INSERT INTO sell VALUES("96","40","1","2","18","2018-11-03 12:25:35","T","0","314800","0");
INSERT INTO sell VALUES("97","64","1","2","18","2018-11-03 01:07:47","E","119900","0","0");
INSERT INTO sell VALUES("98","65","1","2","18","2018-11-03 01:57:10","T","0","309700","0");
INSERT INTO sell VALUES("99","66","1","2","18","2018-11-03 03:24:35","T","0","59900","0");
INSERT INTO sell VALUES("100","67","1","2","18","2018-11-03 05:43:29","E","129900","0","0");
INSERT INTO sell VALUES("101","5","1","2","18","2018-11-03 05:44:46","E","119900","0","0");
INSERT INTO sell VALUES("102","6","1","2","19","2018-11-04 11:48:30","T","0","404800","0");
INSERT INTO sell VALUES("103","50","1","2","20","2018-11-06 09:59:23","E","105000","0","0");
INSERT INTO sell VALUES("105","69","1","2","20","2018-11-06 03:57:45","E","174900","0","0");
INSERT INTO sell VALUES("116","49","1","4","","2018-11-06 05:35:42","E","39900","0","0");
INSERT INTO sell VALUES("117","49","1","3","","2018-11-06 05:35:42","C","0","0","0");
INSERT INTO sell VALUES("118","70","1","2","20","2018-11-06 06:13:03","T","0","49900","0");
INSERT INTO sell VALUES("119","3","1","1","","2018-11-06 00:00:00","E","1","0","0");
INSERT INTO sell VALUES("120","71","1","2","20","2018-11-06 07:16:08","T","0","249800","0");
INSERT INTO sell VALUES("121","72","1","2","20","2018-11-06 08:01:44","E","65000","0","0");
INSERT INTO sell VALUES("122","73","1","2","20","2018-11-06 08:10:35","T","0","129900","0");
INSERT INTO sell VALUES("123","74","1","2","21","2018-11-07 02:34:52","E","135000","0","0");
INSERT INTO sell VALUES("124","8","1","2","21","2018-11-07 02:36:50","E","139900","0","0");
INSERT INTO sell VALUES("125","3","1","1","","2018-11-07 00:00:00","E","1","0","0");
INSERT INTO sell VALUES("135","75","1","2","22","2018-11-08 09:47:22","T","0","109900","0");
INSERT INTO sell VALUES("136","76","1","2","22","2018-11-08 12:52:12","E","49900","0","0");
INSERT INTO sell VALUES("137","77","1","2","22","2018-11-08 01:02:25","E","99900","0","0");
INSERT INTO sell VALUES("138","8","1","2","22","2018-11-08 06:16:51","E","149900","0","0");
INSERT INTO sell VALUES("139","78","1","2","22","2018-11-08 07:06:31","M","160700","300000","0");
INSERT INTO sell VALUES("140","80","1","2","23","2018-11-09 11:18:16","T","0","49900","0");
INSERT INTO sell VALUES("141","80","1","2","23","2018-11-09 11:31:59","T","0","55000","0");
INSERT INTO sell VALUES("142","81","1","2","23","2018-11-09 11:38:08","E","364800","0","0");
INSERT INTO sell VALUES("143","82","1","2","23","2018-11-09 11:47:49","T","0","115000","0");
INSERT INTO sell VALUES("144","83","1","2","23","2018-11-09 12:40:53","T","0","434600","0");
INSERT INTO sell VALUES("145","","1","2","23","2018-11-09 01:51:30","E","464800","0","0");
INSERT INTO sell VALUES("146","84","1","2","23","2018-11-09 04:22:57","T","0","406700","0");
INSERT INTO sell VALUES("147","84","1","2","23","2018-11-09 04:26:11","T","0","125000","0");
INSERT INTO sell VALUES("148","8","1","2","23","2018-11-09 05:01:33","E","95000","0","0");
INSERT INTO sell VALUES("149","72","1","2","23","2018-11-09 06:50:09","T","0","139900","0");
INSERT INTO sell VALUES("150","86","1","2","23","2018-11-09 07:14:28","E","49900","0","0");
INSERT INTO sell VALUES("151","","1","2","24","2018-11-10 10:41:18","T","0","160000","0");
INSERT INTO sell VALUES("152","88","1","2","24","2018-11-10 01:04:07","T","0","109900","0");
INSERT INTO sell VALUES("153","76","1","2","24","2018-11-10 01:45:24","E","49900","0","0");
INSERT INTO sell VALUES("154","89","1","2","24","2018-11-10 02:52:18","T","0","348800","0");
INSERT INTO sell VALUES("155","90","1","2","24","2018-11-10 04:12:52","T","0","129900","0");
INSERT INTO sell VALUES("156","91","1","2","24","2018-11-10 04:53:06","T","0","109900","0");
INSERT INTO sell VALUES("157","92","1","2","24","2018-11-10 06:12:16","T","0","134900","0");
INSERT INTO sell VALUES("158","","1","2","24","2018-11-10 06:25:12","T","0","89900","0");
INSERT INTO sell VALUES("159","94","1","2","24","2018-11-10 06:50:49","T","0","135000","0");
INSERT INTO sell VALUES("160","76","1","2","24","2018-11-10 07:08:38","T","0","55000","0");
INSERT INTO sell VALUES("161","","1","2","24","2018-11-10 07:27:27","T","0","139800","0");
INSERT INTO sell VALUES("162","96","1","2","25","2018-11-11 12:41:46","T","0","117650","0");
INSERT INTO sell VALUES("163","97","1","7","25","2018-11-11 02:28:36","E","100000","0","0");
INSERT INTO sell VALUES("164","98","1","2","25","2018-11-11 02:42:32","T","0","110000","0");
INSERT INTO sell VALUES("166","46","1","2","","2018-11-16 12:30:14","E","274800","0","0");
INSERT INTO sell VALUES("167","57","1","7","","2018-11-17 04:58:51","M","20000","10000","0");
INSERT INTO sell VALUES("168","37","1","2","","2018-11-17 05:05:14","M","29900","50000","0");
INSERT INTO sell VALUES("169","","1","2","","2018-11-17 05:28:49","M","15000","64900","0");
INSERT INTO sell VALUES("170","29","1","7","","2018-11-17 05:46:26","M","20000","50000","0");
INSERT INTO sell VALUES("171","","1","2","","2018-11-17 05:47:46","M","20000","59900","0");
INSERT INTO sell VALUES("172","45","1","7","","2018-11-17 06:04:24","E","20000","0","0");
INSERT INTO sell VALUES("173","45","1","2","","2018-11-17 06:05:07","E","35000","0","0");
INSERT INTO sell VALUES("174","57","1","7","","2018-11-17 06:08:18","T","0","35000","0");
INSERT INTO sell VALUES("175","57","1","2","","2018-11-17 06:08:49","T","0","100000","0");
INSERT INTO sell VALUES("176","57","1","2","","2018-11-17 06:09:47","E","49900","0","0");
INSERT INTO sell VALUES("177","46","1","7","","2018-11-17 06:11:16","E","30000","0","0");
INSERT INTO sell VALUES("178","46","1","2","","2018-11-17 06:11:47","T","0","49900","0");
INSERT INTO sell VALUES("179","8","1","7","","2018-11-17 06:38:58","E","10000","0","0");
INSERT INTO sell VALUES("180","8","1","2","","2018-11-17 06:40:48","E","35000","0","0");
INSERT INTO sell VALUES("181","97","1","2","","2018-11-17 07:17:21","E","39900","0","0");
INSERT INTO sell VALUES("182","37","1","2","","2018-11-17 09:10:08","E","75000","0","3");
INSERT INTO sell VALUES("183","57","3","2","","2018-11-17 10:19:07","T","0","75000","3");
INSERT INTO sell VALUES("185","83","1","5","","2018-11-17 04:15:36","E","30000","0","0");
DROP TABLE IF EXISTS tallas;

CREATE TABLE `tallas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO tallas VALUES("1","","XS","","2018-10-15 04:30:52");
INSERT INTO tallas VALUES("2","","S","","2018-10-15 04:31:03");
INSERT INTO tallas VALUES("3","","M","","2018-10-15 04:31:13");
INSERT INTO tallas VALUES("4","","L","","2018-10-15 04:31:24");
INSERT INTO tallas VALUES("5","","XL","","2018-10-15 04:31:34");
INSERT INTO tallas VALUES("6","","22","","2018-10-15 04:33:47");
INSERT INTO tallas VALUES("7","","24","","2018-10-15 04:33:57");
INSERT INTO tallas VALUES("8","","26","","2018-10-15 04:34:07");
INSERT INTO tallas VALUES("9","","28","","2018-10-15 04:34:15");
INSERT INTO tallas VALUES("10","","30","","2018-10-15 04:34:21");
INSERT INTO tallas VALUES("11","","6","","2018-10-15 04:34:32");
INSERT INTO tallas VALUES("12","","8","","2018-10-15 04:34:41");
INSERT INTO tallas VALUES("13","","10","","2018-10-15 04:34:50");
INSERT INTO tallas VALUES("14","","U","","2018-10-15 08:20:27");
INSERT INTO tallas VALUES("15","","1","","2018-10-15 11:14:15");
INSERT INTO tallas VALUES("16","","3","","2018-10-15 11:14:22");
INSERT INTO tallas VALUES("17","","5","","2018-10-15 11:14:29");
INSERT INTO tallas VALUES("18","","2","","2018-10-15 14:08:17");
INSERT INTO tallas VALUES("19","","37","","2018-10-15 14:08:40");
INSERT INTO tallas VALUES("20","","38","","2018-10-15 14:08:48");
INSERT INTO tallas VALUES("21","","39","","2018-10-15 14:08:56");
INSERT INTO tallas VALUES("22","","36","","2018-10-15 14:09:19");
INSERT INTO tallas VALUES("23","","34","","2018-10-21 15:51:44");
INSERT INTO tallas VALUES("24","","38","","2018-10-21 15:51:56");
INSERT INTO tallas VALUES("25","","40","","2018-10-21 15:52:04");
INSERT INTO tallas VALUES("26","","42","","2018-11-07 16:04:28");
INSERT INTO tallas VALUES("27","","Variada","","2018-11-08 13:55:51");
DROP TABLE IF EXISTS user;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_seller` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("1","Administrador","","admin","admin","90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad","","1","1","1","2018-10-14 19:13:51");
INSERT INTO user VALUES("2","Luis","Bohorquez","lbohorquez","luispit1000@gmail.com","90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad","","1","1","0","2018-10-15 12:19:22");
INSERT INTO user VALUES("3","tito","barrios","tito","g","b8ca49ead3046161feeee264a2ac7353439f69bf","","1","0","1","2018-11-12 14:29:07");



