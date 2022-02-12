<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 2-10-2010 20:59
 */

if (! defined('NV_IS_FILE_MODULES')) {
    die('Stop!!!');
}

$sql_drop_module = array();

$sql_drop_module[] = 'DROP TABLE IF EXISTS ' . $db_config['prefix'] . '_' . $lang . '_' . $module_data;
$sql_drop_module[] = 'DROP TABLE IF EXISTS ' . $db_config['prefix'] . '_' . $lang . '_' . $module_data . '_rows';

$sql_create_module = $sql_drop_module;

$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_rows (
 id mediumint(5) NOT NULL AUTO_INCREMENT,
 parentid mediumint(5) unsigned NOT NULL,
 mid smallint(5) NOT NULL DEFAULT '0',
 title varchar(255) NOT NULL,
 photo varchar(255) NOT NULL,
 phone varchar(255) NOT NULL,
 email varchar(255) NOT NULL,
 skype varchar(255) NOT NULL,
 facebook varchar(255) NOT NULL,
 weight int(11) NOT NULL,
 status tinyint(1) unsigned NOT NULL DEFAULT '0',
 PRIMARY KEY (id),
 KEY parentid (parentid, mid)
) ENGINE=MyISAM";

$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . " (
 id smallint(5) unsigned NOT NULL AUTO_INCREMENT,
 title varchar(50) NOT NULL,
 PRIMARY KEY (id),
 UNIQUE KEY title (title)
) ENGINE=MyISAM";


$sql_create_module[] = "INSERT INTO " .$db_config['prefix'] . "_" . $lang . "_" . $module_data . " (id, title) VALUES (1, 'Phòng kinh doanh'),
(2, 'Phòng kỹ thuật'),
(3, 'Phòng chăm sóc khách hàng');";

