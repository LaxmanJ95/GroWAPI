/*
-- Query: SELECT * FROM grocery.shipping_handling
-- Date: 2018-02-13 18:23
*/
CREATE TABLE `shipping_handling` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY` varchar(45) DEFAULT NULL,
  `COUNTY` varchar(45),
  `CITY` varchar(45) DEFAULT NULL,
  `SHIPPING_RATE` varchar(45) DEFAULT NULL ,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
INSERT INTO `shipping_handling` (`ID`,`COUNTRY`,`COUNTY`,`CITY`,`SHIPPING_RATE`) VALUES (1,'California',NULL,'Dublin','20');
INSERT INTO `shipping_handling` (`ID`,`COUNTRY`,`COUNTY`,`CITY`,`SHIPPING_RATE`) VALUES (2,'California',NULL,'Fremont','22');
INSERT INTO `shipping_handling` (`ID`,`COUNTRY`,`COUNTY`,`CITY`,`SHIPPING_RATE`) VALUES (3,'California',NULL,'Mountain House','21');
INSERT INTO `shipping_handling` (`ID`,`COUNTRY`,`COUNTY`,`CITY`,`SHIPPING_RATE`) VALUES (4,'California',NULL,'Pleasanton','22');
INSERT INTO `shipping_handling` (`ID`,`COUNTRY`,`COUNTY`,`CITY`,`SHIPPING_RATE`) VALUES (5,'California',NULL,'San Ramon','20');
INSERT INTO `shipping_handling` (`ID`,`COUNTRY`,`COUNTY`,`CITY`,`SHIPPING_RATE`) VALUES (6,'Default',NULL,'Default','23');
