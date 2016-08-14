/*
Navicat MySQL Data Transfer

Source Server         : DataBase
Source Server Version : 50545
Source Host           : localhost:3306
Source Database       : shop_diplom

Target Server Type    : MYSQL
Target Server Version : 50545
File Encoding         : 65001

Date: 2016-08-14 16:12:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `Catalog`
-- ----------------------------
DROP TABLE IF EXISTS `Catalog`;
CREATE TABLE `Catalog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Catalog
-- ----------------------------
INSERT INTO `Catalog` VALUES ('11', 'відеокамери');
INSERT INTO `Catalog` VALUES ('3', 'електронні книги');
INSERT INTO `Catalog` VALUES ('4', 'компютери');
INSERT INTO `Catalog` VALUES ('8', 'наушники');
INSERT INTO `Catalog` VALUES ('1', 'ноутбуки');
INSERT INTO `Catalog` VALUES ('6', 'оргтеxніка');
INSERT INTO `Catalog` VALUES ('2', 'планшети');
INSERT INTO `Catalog` VALUES ('5', 'програмне забезпечення');
INSERT INTO `Catalog` VALUES ('7', 'смартфони');
INSERT INTO `Catalog` VALUES ('9', 'ТВ теxніка');
INSERT INTO `Catalog` VALUES ('10', 'фотоапарати');

-- ----------------------------
-- Table structure for `Order`
-- ----------------------------
DROP TABLE IF EXISTS `Order`;
CREATE TABLE `Order` (
  `id` int(11) unsigned NOT NULL,
  `id_user` int(11) unsigned NOT NULL,
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `date_oreder` date NOT NULL,
  UNIQUE KEY `id_user` (`id_user`) USING BTREE,
  KEY `id_status` (`status`),
  KEY `id` (`id`),
  KEY `date_oreder` (`date_oreder`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id`) REFERENCES `OrderList` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Order
-- ----------------------------
INSERT INTO `Order` VALUES ('1', '1', '1', '2015-09-21');
INSERT INTO `Order` VALUES ('2', '2', '6', '2015-09-21');
INSERT INTO `Order` VALUES ('3', '3', '3', '2015-09-21');
INSERT INTO `Order` VALUES ('4', '4', '4', '2015-09-22');
INSERT INTO `Order` VALUES ('5', '5', '6', '2015-09-22');
INSERT INTO `Order` VALUES ('6', '6', '1', '2015-09-23');
INSERT INTO `Order` VALUES ('7', '7', '2', '2015-09-23');
INSERT INTO `Order` VALUES ('8', '8', '3', '2015-09-25');
INSERT INTO `Order` VALUES ('9', '9', '6', '2015-09-25');
INSERT INTO `Order` VALUES ('10', '10', '2', '2015-09-27');
INSERT INTO `Order` VALUES ('11', '11', '1', '2015-09-28');
INSERT INTO `Order` VALUES ('12', '12', '2', '2015-09-28');
INSERT INTO `Order` VALUES ('13', '13', '3', '2015-09-29');
INSERT INTO `Order` VALUES ('14', '14', '5', '2015-09-29');
INSERT INTO `Order` VALUES ('15', '15', '6', '2015-09-30');
INSERT INTO `Order` VALUES ('16', '16', '1', '2015-10-02');
INSERT INTO `Order` VALUES ('17', '17', '6', '2015-10-05');
INSERT INTO `Order` VALUES ('18', '18', '3', '2015-10-06');
INSERT INTO `Order` VALUES ('19', '19', '6', '2015-10-10');
INSERT INTO `Order` VALUES ('20', '20', '6', '2015-10-12');
INSERT INTO `Order` VALUES ('21', '21', '1', '2015-10-24');
INSERT INTO `Order` VALUES ('22', '22', '2', '2015-10-25');
INSERT INTO `Order` VALUES ('23', '23', '3', '2015-11-05');
INSERT INTO `Order` VALUES ('24', '24', '4', '2015-11-10');
INSERT INTO `Order` VALUES ('25', '25', '6', '2015-11-15');
INSERT INTO `Order` VALUES ('26', '26', '1', '2015-11-15');
INSERT INTO `Order` VALUES ('27', '27', '2', '2015-11-30');
INSERT INTO `Order` VALUES ('28', '28', '3', '2015-12-01');
INSERT INTO `Order` VALUES ('29', '29', '6', '2015-12-18');
INSERT INTO `Order` VALUES ('30', '30', '5', '2015-12-28');

-- ----------------------------
-- Table structure for `OrderList`
-- ----------------------------
DROP TABLE IF EXISTS `OrderList`;
CREATE TABLE `OrderList` (
  `id` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  KEY `id` (`id`),
  KEY `count` (`count`),
  KEY `price` (`price`),
  CONSTRAINT `orderlist_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `Products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of OrderList
-- ----------------------------
INSERT INTO `OrderList` VALUES ('1', '1', '1', '5000');
INSERT INTO `OrderList` VALUES ('2', '3', '2', '6300');
INSERT INTO `OrderList` VALUES ('3', '5', '1', '8200');
INSERT INTO `OrderList` VALUES ('4', '2', '3', '5300');
INSERT INTO `OrderList` VALUES ('5', '1', '2', '5000');
INSERT INTO `OrderList` VALUES ('6', '6', '1', '6500');
INSERT INTO `OrderList` VALUES ('7', '7', '2', '5750');
INSERT INTO `OrderList` VALUES ('8', '10', '1', '14000');
INSERT INTO `OrderList` VALUES ('9', '12', '1', '1400');
INSERT INTO `OrderList` VALUES ('10', '19', '1', '11040');
INSERT INTO `OrderList` VALUES ('11', '20', '5', '2800');
INSERT INTO `OrderList` VALUES ('12', '11', '3', '2700');
INSERT INTO `OrderList` VALUES ('13', '22', '8', '730');
INSERT INTO `OrderList` VALUES ('14', '5', '2', '8200');
INSERT INTO `OrderList` VALUES ('15', '27', '1', '8763');
INSERT INTO `OrderList` VALUES ('16', '25', '10', '700');
INSERT INTO `OrderList` VALUES ('17', '23', '1', '944');
INSERT INTO `OrderList` VALUES ('18', '25', '7', '700');
INSERT INTO `OrderList` VALUES ('19', '29', '2', '4222');
INSERT INTO `OrderList` VALUES ('20', '31', '1', '500');
INSERT INTO `OrderList` VALUES ('21', '34', '1', '7700');
INSERT INTO `OrderList` VALUES ('22', '33', '4', '190');
INSERT INTO `OrderList` VALUES ('23', '29', '3', '4222');
INSERT INTO `OrderList` VALUES ('24', '30', '1', '10399');
INSERT INTO `OrderList` VALUES ('25', '38', '1', '6000');
INSERT INTO `OrderList` VALUES ('26', '26', '5', '5333');
INSERT INTO `OrderList` VALUES ('27', '16', '2', '9000');
INSERT INTO `OrderList` VALUES ('28', '17', '20', '5000');
INSERT INTO `OrderList` VALUES ('29', '6', '2', '6500');
INSERT INTO `OrderList` VALUES ('30', '39', '1', '11500');

-- ----------------------------
-- Table structure for `Products`
-- ----------------------------
DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mark` varchar(50) NOT NULL,
  `count` int(11) unsigned NOT NULL,
  `price` int(11) unsigned NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `id_catalog` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_catalog` (`id_catalog`),
  KEY `title` (`title`),
  KEY `mark` (`mark`),
  KEY `count` (`count`),
  KEY `price` (`price`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_catalog`) REFERENCES `Catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Products
-- ----------------------------
INSERT INTO `Products` VALUES ('1', 'Lenovo G40-30', 'Lenovo', '20', '5000', 'Ноутбук Lenovo G40-30', '1');
INSERT INTO `Products` VALUES ('2', 'HP 255 G3', 'HP', '25', '5300', 'Ноутбук HP 255 G3', '1');
INSERT INTO `Products` VALUES ('3', 'Acer Aspire E5', 'Acer', '10', '6300', 'Ноутбук Acer Aspire E5-511-P95P', '1');
INSERT INTO `Products` VALUES ('4', 'Asus Transformer Book', 'Asus', '15', '5000', 'Ноутбук Asus Transformer Book T100TAF 32GB', '1');
INSERT INTO `Products` VALUES ('5', 'Lenovo B590', 'Lenovo', '30', '8200', 'Ноутбук Lenovo B590', '1');
INSERT INTO `Products` VALUES ('6', 'Dell Inspiron 3542', 'Dell', '5', '6500', 'Ноутбук Dell Inspiron 3542', '1');
INSERT INTO `Products` VALUES ('7', 'Samsung Galaxy Tab', 'Samsung', '20', '5750', 'Планшет Samsung Galaxy Tab E 9.6\" 3G White', '2');
INSERT INTO `Products` VALUES ('8', 'Asus Fonepad 7', 'Asus', '24', '2900', 'Планшет Asus Fonepad 7 3G 8GB Black', '2');
INSERT INTO `Products` VALUES ('9', 'Lenovo IdeaTab A7600', 'Lenovo', '30', '4800', 'Планшет Lenovo IdeaTab A7600 16GB Navy Blue', '2');
INSERT INTO `Products` VALUES ('10', 'Samsung Galaxy Tab S2', 'Samsung', '27', '14000', 'Планшет Samsung Galaxy Tab S2 9.7\" 32GB Black', '2');
INSERT INTO `Products` VALUES ('11', 'Lenovo TAB 2', 'Lenovo', '44', '2700', 'Планшет Lenovo TAB 2 A7-30 7\" 2G 8GB Black', '2');
INSERT INTO `Products` VALUES ('12', 'EvroMedia Play Pad', 'EvroMedia', '8', '1400', 'Планшет EvroMedia Play Pad 3G Note 8GB', '2');
INSERT INTO `Products` VALUES ('13', 'PocketBook 624', 'PocketBook', '15', '3040', 'Електронна книга PocketBook 624 Basic Touch Grey', '3');
INSERT INTO `Products` VALUES ('14', 'PocketBook 626', 'PocketBook', '12', '4180', 'Електронна книга PocketBook 626 Touch Lux2 White', '3');
INSERT INTO `Products` VALUES ('15', 'Wexler Book E6005', 'Wexler', '22', '1615', 'Електронна книга Wexler Book E6005 Black', '3');
INSERT INTO `Products` VALUES ('16', 'Lenovo IdeaCentre H50-50', 'Lenovo', '23', '9000', 'Комп\'ютер Lenovo IdeaCentre H50-50', '4');
INSERT INTO `Products` VALUES ('17', 'Everest Home', 'Everest', '43', '5000', 'Комп\'ютер Everest Home & Office 1005', '4');
INSERT INTO `Products` VALUES ('18', 'ARTLINE Business B26', 'Artline', '7', '7440', 'Комп\'ютер ARTLINE Business B26 v02', '4');
INSERT INTO `Products` VALUES ('19', 'ARTLINE Gaming X45', 'Artline', '24', '11040', 'Комп\'ютер ARTLINE Gaming X45 v01', '4');
INSERT INTO `Products` VALUES ('20', 'Windows 10', 'Microsoft', '10', '2800', 'Windows 10 Home', '5');
INSERT INTO `Products` VALUES ('21', 'Windows 8.1', 'Microsoft', '4', '2600', 'Windows 8.1 Pro', '5');
INSERT INTO `Products` VALUES ('22', 'Kaspersky Internet Security', 'Лабораторія Касперского', '15', '730', 'Kaspersky Internet Security для всіх пристроїв 2015', '5');
INSERT INTO `Products` VALUES ('23', 'Grand Theft Auto V', 'Rockstar Games', '45', '944', 'Ігра Grand Theft Auto V PC', '5');
INSERT INTO `Products` VALUES ('24', 'Metal Gear Solid V', 'Konami Digital Entertainment', '10', '1155', 'Ігра Metal Gear Solid V PC', '5');
INSERT INTO `Products` VALUES ('25', 'Panasonic KX-TG1711UAB', 'Panasonic', '15', '700', 'Телефонний аппарат Panasonic KX-TG1711UAB Black', '6');
INSERT INTO `Products` VALUES ('26', 'HP LaserJet P2035', 'HP', '57', '5333', 'Прінтер HP LaserJet P2035 (CE461A) + USB', '6');
INSERT INTO `Products` VALUES ('27', 'Acer C205', 'Acer', '24', '8763', 'Проектор Acer C205', '6');
INSERT INTO `Products` VALUES ('28', 'Samsung Galaxy S6', 'Samsung', '41', '17000', 'Сматрфон Samsung Galaxy S6 SS 32GB G920 Blue', '7');
INSERT INTO `Products` VALUES ('29', 'LG G3s', 'LG', '50', '4222', 'Смартфон LG G3s Dual D724 Gold', '7');
INSERT INTO `Products` VALUES ('30', 'Apple iPhone 5s', 'Apple', '20', '10399', 'Смартфон Apple iPhone 5s 16GB Gold (CPO) + Официал', '7');
INSERT INTO `Products` VALUES ('31', 'Koss UR20', 'Koss', '50', '500', 'Наушники Koss UR20', '8');
INSERT INTO `Products` VALUES ('32', 'Sennheiser HD 201', 'Sennheiser', '70', '676', 'Наушники Sennheiser HD 201', '8');
INSERT INTO `Products` VALUES ('33', 'Philips SHE3590BL', ' Philips', '100', '190', 'Наушники Philips SHE3590BL/10', '8');
INSERT INTO `Products` VALUES ('34', 'LG 32LB572U', 'LG', '20', '7700', 'Телевізор LG 32LB572U + Wi-Fi Bluetooth LG AN-WF50', '9');
INSERT INTO `Products` VALUES ('35', 'Samsung UE22H5600', 'Samsung', '40', '5555', 'Телевізор Samsung UE22H5600', '9');
INSERT INTO `Products` VALUES ('36', 'Fujifilm FinePix S8600', 'Fujifilm', '31', '3300', 'Фотоаппарат Fujifilm FinePix S8600 Black', '10');
INSERT INTO `Products` VALUES ('37', 'Canon EOS 700D', 'Canon', '15', '12000', 'Фотоаппарат Canon EOS 700D 18-55mm DC III', '10');
INSERT INTO `Products` VALUES ('38', 'Nikon Coolpix P530', 'Nikon', '35', '6000', 'Фотоаппарат Nikon Coolpix P530 Black', '10');
INSERT INTO `Products` VALUES ('39', 'Sony HDR-AS200V', 'Sony', '10', '11500', 'Відеокамера Sony HDR-AS200V з пультом ДУ RM-LVR2', '11');
INSERT INTO `Products` VALUES ('40', 'Panasonic HC', 'Panasonic', '15', '10000', 'Відеокамера Panasonic HC-W570EE-K', '11');
INSERT INTO `Products` VALUES ('41', 'Xiaomi Yi Sport', 'Xiaomi', '5', '2900', 'Відеокамера Xiaomi Yi Sport White Travel Edition', '11');

-- ----------------------------
-- Table structure for `User`
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `reg_date` date NOT NULL,
  `last_update` date DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `lastname` (`lastname`),
  KEY `birthday` (`birthday`),
  KEY `is_active` (`is_active`),
  KEY `reg_date` (`reg_date`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User
-- ----------------------------
INSERT INTO `User` VALUES ('1', 'Юрий', 'Юрах', '1994-04-09', 'yurayurakh@mail.ru', '12345123', '1', '2015-09-15', '2015-09-20', 'yurayurakh');
INSERT INTO `User` VALUES ('2', 'Максим', 'Мельник', '1993-03-25', 'm.mel@mail.ru', '32545ms', '1', '2015-09-15', '2015-09-16', '');
INSERT INTO `User` VALUES ('3', 'Артем', 'Гарник', '1993-07-15', 'petr.a@mail.ru', '55555aa', '1', '2015-09-15', '2015-09-15', '');
INSERT INTO `User` VALUES ('4', 'Роман', 'Ковен', '1992-02-28', 'kov.eny@mail.ru', '65656rom', '1', '2015-09-15', '2015-09-15', '');
INSERT INTO `User` VALUES ('5', 'Артур', 'Деблим', '1993-07-21', 'art.deb@mail.ru', '12312a', '1', '2015-09-16', '2015-09-16', '');
INSERT INTO `User` VALUES ('6', 'Иван', 'Врач', '1997-11-12', 'doc@mail.ru', 'i12321', '1', '2015-08-10', '2015-09-10', '');
INSERT INTO `User` VALUES ('7', 'Костянтын', 'Цымбр', '1985-01-25', 'kostyh@mail.ru', '78987kos', '1', '2015-03-19', '2015-08-23', '');
INSERT INTO `User` VALUES ('8', 'Андрей ', 'Шпирко', '1989-12-30', 'andr89@mail.ru', '45dd656', '0', '2015-09-20', '2015-10-11', '');
INSERT INTO `User` VALUES ('9', 'Василий ', 'Пупкин', '1992-11-28', 'vasypyp@mail.ru', 'weq45', '1', '2015-06-23', '2015-07-21', '');
INSERT INTO `User` VALUES ('10', 'Иван', 'Пушкин', '1996-04-12', 'pyshkin@mail.ru', '96pus', '0', '2015-04-11', '2015-06-15', '');
INSERT INTO `User` VALUES ('11', 'Петр', 'Домин', '1978-03-25', 'domin78@mail.ru', '19780', '1', '2015-01-15', '2015-06-29', '');
INSERT INTO `User` VALUES ('12', 'Иван ', 'Хост', '1990-03-31', 'hostivan@mail.ru', '12ivh', '1', '2015-05-11', '2015-09-19', '');
INSERT INTO `User` VALUES ('13', 'Кристина', 'Каринич', '1995-01-27', 'kar95@mail.ru', '1995k', '0', '2015-02-04', '2015-06-15', '');
INSERT INTO `User` VALUES ('14', 'Евгений', 'Малышев', '1998-09-09', 'zeka98@mail.ru', 'zuk09', '0', '2015-03-06', '2015-05-17', '');
INSERT INTO `User` VALUES ('15', 'Валерия', 'Синицена', '1987-10-12', 'lera1987@mail.ru', 'lerach', '0', '2015-04-05', '2015-07-16', '');
INSERT INTO `User` VALUES ('16', 'Мария', 'Синцова', '1996-07-14', 'mashka@mail.ru', '07masha', '1', '2014-12-30', '2015-07-19', '');
INSERT INTO `User` VALUES ('17', 'Ирина', 'Петрова', '1995-06-06', 'irapetr@gmail.com', 'ir666petr', '0', '2015-01-12', '2015-02-14', '');
INSERT INTO `User` VALUES ('18', 'Екатерина', 'Васнецова', '1999-01-03', 'katy99@mail.ru', '99katy', '0', '2015-02-01', '2015-04-03', '');
INSERT INTO `User` VALUES ('19', 'Свитлана', 'Новикова', '1997-08-24', 'sveta.n@gmail.com', 'svetA777', '0', '2015-04-09', '2015-05-09', '');
INSERT INTO `User` VALUES ('20', 'Николай ', 'Должанский', '1970-06-25', 'kolayn@mail.ru', 'durachok01', '1', '2015-01-03', '2015-03-01', '');
INSERT INTO `User` VALUES ('21', 'Виктор', 'Кльоц', '1979-03-27', 'klyots@gmail.com', 'vitykl27', '0', '0000-00-00', '0000-00-00', '');
INSERT INTO `User` VALUES ('22', 'Валентин', 'Клинтон', '1994-02-13', 'valik.kl@rambler.ru', 'valik940213', '0', '2015-02-28', '2015-04-03', '');
INSERT INTO `User` VALUES ('23', 'Тетяна', 'Молонцова', '1996-05-07', 'tanyka.mol@yandex.ru', 'tetyana05', '0', '2015-01-06', '2015-04-02', '');
INSERT INTO `User` VALUES ('24', 'Варвара', 'Васильева', '1989-09-30', 'varvarvas@rambler.ru', 'variy0930', '1', '2015-02-07', '2015-07-18', '');
INSERT INTO `User` VALUES ('25', 'Ирина', 'Намина', '1991-02-08', 'irka.namina@yandex.ru', 'irka1namina', '0', '2015-05-04', '2015-06-01', '');
INSERT INTO `User` VALUES ('26', 'Єкатерина', 'Дубова', '1992-09-07', 'katy.katy@bk.ru', 'katyha9', '0', '2015-05-25', '2015-06-12', '');
INSERT INTO `User` VALUES ('27', 'Ольга', 'Кукурина', '1997-11-21', 'olga1997@bk.ru', '19olga97', '0', '2014-10-14', '2015-02-04', '');
INSERT INTO `User` VALUES ('28', 'Наталия ', 'Василева', '1990-12-13', 'natasha.v12@yandex.ru', 'natashav12', '1', '2015-01-30', '2015-02-25', '');
INSERT INTO `User` VALUES ('29', 'Дима', 'Чуркин', '1991-08-18', 'churk.dima@rambler.ru', 'dima91chur', '0', '2015-03-01', '2015-03-02', '');
INSERT INTO `User` VALUES ('30', 'Игор', 'Мамай', '1985-09-27', 'igor.mam@bk.ru', 'mam8527', '1', '2015-05-06', '2015-07-08', '');
