﻿DROP USER 'wrss'@localhost;
FLUSH PRIVILEGES;
CREATE USER 'wrss' IDENTIFIED BY 'ReadWrite@SS';

GRANT SELECT ON TABLE `SS-DBFO`.* TO 'wrss';
GRANT SELECT, INSERT, TRIGGER ON TABLE `SS-DBFO`.* TO 'wrss';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `SS-DBFO`.* TO 'wrss';
GRANT ALL ON `SS-DBFO`.* TO 'wrss';