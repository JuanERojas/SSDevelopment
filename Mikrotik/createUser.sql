﻿SELECT * FROM `log` l;

DROP USER 'usermk'@localhost;
FLUSH PRIVILEGES;
CREATE USER 'usermk' IDENTIFIED BY 'ReadWriteMk@SS';

GRANT SELECT ON TABLE `SS-MK`.* TO 'usermk';
GRANT SELECT, INSERT, TRIGGER ON TABLE `SS-MK`.* TO 'usermk';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `SS-MK`.* TO 'usermk';
GRANT ALL ON `SS-MK`.* TO 'usermk';