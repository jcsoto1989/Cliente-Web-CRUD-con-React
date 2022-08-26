
use sigac_db
CREATE TABLE `DeviceType` (
  `idDeviceType` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `description` varchar(30) NOT NULL
  )
  
  CREATE TABLE `Device` (
  `idDevice` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `code` varchar(15),
  `idDeviceType` INT NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model`varchar(50),
  `serialNumber` varchar(50),
  `macNumber` varchar(30),
  `status` INT,
  `location` varchar(250),
  `notes` varchar(250),
  `serviceTag` varchar(30),
  `dedicatedVideo` INT,
  `videoMemory` INT,
  `processorName` varchar(50),
  `memoryType` varchar(50),
  `memoryCapacity` INT,
  `storageType` varchar(50),
  `storageCapacity` INT,
  `screenSize` DECIMAL,
  `idEquipment` INT NULL,
  `updateDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registerDate` DATETIME DEFAULT CURRENT_TIMESTAMP
  )
  ALTER TABLE Device
ADD CONSTRAINT FK_device_deviceType
FOREIGN KEY (idDeviceType) REFERENCES DeviceType(idDeviceType);

ALTER TABLE Device
ADD CONSTRAINT FK_device_equipment
FOREIGN KEY (idEquipment) REFERENCES Equipment(idEquipment);
 
 
 CREATE TABLE `Equipment` (
  `idEquipment` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `equipmentName` VARCHAR (50),
  `responsible` VARCHAR (200),
  `location` varchar(150),
  `status`INT,
  `updateDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registerDate` DATETIME DEFAULT CURRENT_TIMESTAMP
 )

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';

flush privileges;

INSERT INTO `sigac_db`.`device` (`idDeviceType`, `brand`,`code`, `model`, `serialNumber`, `status`, `location`, `notes`, `serviceTag`, `dedicatedVideo`, `videoMemory`, `processorName`, `memoryType`, `memoryCapacity`, `storageType`, `storageCapacity`, `screenSize`) VALUES (1, 'DELL','852585', 'OP 990SX', 'CN23452Dr@$$', 1, 'Taller', 'Disco nuevo', 'SD345', 1, 128, 'Intel i5', 'DDR3', 8, 'SATA SSD', 512, 14);
INSERT INTO `sigac_db`.`device` (`idDeviceType`, `brand`,`code`, `model`, `serialNumber`, `status`, `location`, `notes`, `serviceTag`, `dedicatedVideo`, `videoMemory`, `processorName`, `memoryType`, `memoryCapacity`, `storageType`, `storageCapacity`, `screenSize`) VALUES (2, 'HP','784512', 'Probook 640', 'HTSN35354', 1, 'Laboratorio', 'Prestamo', 'SD345', 1, 128, 'Intel i7', 'DDR3', 8, 'SATA SSD', 512, 14);
INSERT INTO `sigac_db`.`device` (`idDeviceType`, `brand`,`code`, `model`, `serialNumber`, `status`, `location`, `notes`, `serviceTag`, `dedicatedVideo`, `videoMemory`, `processorName`, `memoryType`, `memoryCapacity`, `storageType`, `storageCapacity`, `screenSize`) VALUES (4, 'Forza','996633', 'PB6', 'F3434R', 1, 'Taller', 'Nueva', 'SD345', 1, 0, '', '', 0, '', 0, 0);
