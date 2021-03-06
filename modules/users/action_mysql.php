<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 10/03/2010 10:51
 */

if (!defined('NV_IS_FILE_MODULES')) {
    die('Stop!!!');
}

$sql_drop_module = array();
$_arr_table_module = array();
$result = $db->query('SHOW TABLE STATUS LIKE ' . $db->quote($db_config['prefix'] . '_' . $module_data . '_%'));
while ($item = $result->fetch()) {
    $_arr_table_module[] = $item['name'];
}
if ($module_data != 'users') {
    foreach ($_arr_table_module as $_table) {
        $sql_drop_module[] = 'DROP TABLE IF EXISTS ' . $_table;
    }
    $sql_drop_module[] = 'DROP TABLE IF EXISTS ' . $db_config['prefix'] . '_' . $module_data;
}

$sql_create_module = $sql_drop_module;
if ($module_data != 'users' or empty($_arr_table_module)) {
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . "_config (
    	config varchar(100) NOT NULL,
    	content text,
    	edit_time int(11) unsigned NOT NULL DEFAULT '0',
    	PRIMARY KEY (config)
    ) ENGINE=MyISAM";
    
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . "_question (
    	qid smallint(5) unsigned NOT NULL AUTO_INCREMENT,
    	title varchar(240) NOT NULL DEFAULT '',
    	lang char(2) NOT NULL DEFAULT '',
    	weight mediumint(8) unsigned NOT NULL DEFAULT '0',
    	add_time int(11) unsigned NOT NULL DEFAULT '0',
    	edit_time int(11) unsigned NOT NULL DEFAULT '0',
    	PRIMARY KEY (qid),
    	UNIQUE KEY title (title,lang)
    ) ENGINE=MyISAM";
    
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . " (
    	userid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
        group_id smallint(5) unsigned NOT NULL DEFAULT '0',
    	username varchar(100) NOT NULL DEFAULT '',
    	md5username char(32) NOT NULL DEFAULT '',
    	password varchar(80) NOT NULL DEFAULT '',
    	email varchar(100) NOT NULL DEFAULT '',
    	first_name varchar(100) NOT NULL DEFAULT '',
    	last_name varchar(100) NOT NULL DEFAULT '',
    	gender char(1) DEFAULT '',
    	photo varchar(255) DEFAULT '',
    	birthday int(11) NOT NULL,
    	sig text,
    	regdate int(11) NOT NULL DEFAULT '0',
    	question varchar(255) NOT NULL,
    	answer varchar(255) NOT NULL DEFAULT '',
    	passlostkey varchar(50) DEFAULT '',
    	view_mail tinyint(1) unsigned NOT NULL DEFAULT '0',
    	remember tinyint(1) unsigned NOT NULL DEFAULT '0',
    	in_groups varchar(255) DEFAULT '',
    	active tinyint(1) unsigned NOT NULL DEFAULT '0',
    	checknum varchar(40) DEFAULT '',
    	last_login int(11) unsigned NOT NULL DEFAULT '0',
    	last_ip varchar(45) DEFAULT '',
    	last_agent varchar(255) DEFAULT '',
    	last_openid varchar(255) DEFAULT '',
    	idsite int(11) NOT NULL DEFAULT '0',
        safemode tinyint(1) unsigned NOT NULL DEFAULT '0',
        safekey varchar(40) DEFAULT '',
    	PRIMARY KEY (userid),
    	UNIQUE KEY username (username),
    	UNIQUE KEY md5username (md5username),
    	UNIQUE KEY email (email),
    	KEY idsite (idsite)
    ) ENGINE=MyISAM";
    
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . "_groups (
    	group_id smallint(5) unsigned NOT NULL AUTO_INCREMENT,
    	title varchar(240) NOT NULL,
    	email varchar(100) DEFAULT '',
        description text,
    	content text,
    	group_type tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
        group_color varchar(10) NOT NULL,
        group_avatar varchar(255) NOT NULL,
        is_default tinyint(1) unsigned NOT NULL DEFAULT '0',
    	add_time int(11) NOT NULL,
    	exp_time int(11) NOT NULL,
    	weight int(11) unsigned NOT NULL DEFAULT '0',
    	act tinyint(1) unsigned NOT NULL,
    	idsite int(11) unsigned NOT NULL DEFAULT '0',
    	numbers mediumint(9) unsigned NOT NULL DEFAULT '0',
    	siteus tinyint(4) unsigned NOT NULL DEFAULT '0',
    	config varchar(250) DEFAULT '',
    	PRIMARY KEY (group_id),
    	UNIQUE KEY ktitle (title,idsite),
    	KEY exp_time (exp_time)
    ) ENGINE=MyISAM AUTO_INCREMENT=10";
    
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . "_groups_users (
    	group_id smallint(5) unsigned NOT NULL DEFAULT '0',
    	userid mediumint(8) unsigned NOT NULL DEFAULT '0',
        is_leader tinyint(1) unsigned NOT NULL DEFAULT '0',
        approved tinyint(1) unsigned NOT NULL DEFAULT '0',
    	data text NOT NULL,
    	PRIMARY KEY (group_id,userid)
    ) ENGINE=MyISAM";
    
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . "_reg (
    	userid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    	username varchar(100) NOT NULL DEFAULT '',
    	md5username char(32) NOT NULL DEFAULT '',
    	password varchar(80) NOT NULL DEFAULT '',
    	email varchar(100) NOT NULL DEFAULT '',
    	first_name varchar(255) NOT NULL DEFAULT '',
    	last_name varchar(255) NOT NULL DEFAULT '',
    	regdate int(11) unsigned NOT NULL DEFAULT '0',
    	question varchar(255) NOT NULL,
    	answer varchar(255) NOT NULL DEFAULT '',
    	checknum varchar(50) NOT NULL DEFAULT '',
    	users_info text,
        openid_info text,
    	PRIMARY KEY (userid),
    	UNIQUE KEY login (username),
    	UNIQUE KEY md5username (md5username),
    	UNIQUE KEY email (email)
    ) ENGINE=MyISAM";
    
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . "_openid (
    	userid mediumint(8) unsigned NOT NULL DEFAULT '0',
    	openid varchar(255) NOT NULL DEFAULT '',
    	opid varchar(50) NOT NULL DEFAULT '',
    	email varchar(100) NOT NULL DEFAULT '',
    	PRIMARY KEY (opid),
    	KEY userid (userid),
    	KEY email (email)
    ) ENGINE=MyISAM";
    
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . "_field (
    	fid mediumint(8) NOT NULL AUTO_INCREMENT,
    	field varchar(25) NOT NULL,
    	weight int(10) unsigned NOT NULL DEFAULT '1',
    	field_type enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') NOT NULL DEFAULT 'textbox',
    	field_choices text NOT NULL,
    	sql_choices text NOT NULL,
    	match_type enum('none','alphanumeric','email','url','regex','callback') NOT NULL DEFAULT 'none',
    	match_regex varchar(250) NOT NULL DEFAULT '',
    	func_callback varchar(75) NOT NULL DEFAULT '',
    	min_length int(11) NOT NULL DEFAULT '0',
    	max_length bigint(20) unsigned NOT NULL DEFAULT '0',
    	required tinyint(3) unsigned NOT NULL DEFAULT '0',
    	show_register tinyint(3) unsigned NOT NULL DEFAULT '0',
    	user_editable tinyint(3) unsigned NOT NULL DEFAULT '0',
    	show_profile tinyint(4) NOT NULL DEFAULT '1',
    	class varchar(50) NOT NULL,
    	language text NOT NULL,
    	default_value varchar(255) NOT NULL DEFAULT '',
    	PRIMARY KEY (fid),
    	UNIQUE KEY field (field)
    ) ENGINE=MyISAM";
    
    $sql_create_module[] = "CREATE TABLE IF NOT EXISTS " . $db_config['prefix'] . "_" . $module_data . "_info (
    	userid mediumint(8) unsigned NOT NULL,
    	PRIMARY KEY (userid)
    ) ENGINE=MyISAM";
    
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('access_admin', 'a:6:{s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', " . NV_CURRENTTIME . ")";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('deny_email', 'yoursite.com|mysite.com|localhost|xxx', " . NV_CURRENTTIME . ")";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', " . NV_CURRENTTIME . ")";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('avatar_width', 80, " . NV_CURRENTTIME . ")";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('avatar_height', 80, " . NV_CURRENTTIME . ")";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('active_group_newusers', '0', " . NV_CURRENTTIME . ")";
    
    $a=0;
    if ($module_data == 'users') {
        $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
        $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (2, 'General admin', '', 'General Admin', '', 0, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
        $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
        $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (4, 'Users', '', 'Users', '', 0, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
        $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (7, 'New Users', '', 'New Users', '', 0, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
        $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (5, 'Guest', '', 'Guest', '', 0, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
        $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (6, 'All', '', 'All', '', 0, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
    }
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (10, 'NukeViet-Fans', '', '" . $install_lang['groups']['NukeViet-Fans'] . "', '', 2, '', '', 1, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (11, 'NukeViet-Admins', '', '" . $install_lang['groups']['NukeViet-Admins'] . "', '', 2, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_groups (group_id, title, email, description, content, group_type, group_color, group_avatar, is_default, add_time, exp_time, weight, act, idsite, numbers, siteus, config) VALUES (12, 'NukeViet-Programmers', '', '" . $install_lang['groups']['NukeViet-Programmers'] . "', '', 1, '', '', 0, " . NV_CURRENTTIME . ", 0, " . ++$a . ", 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}')";
} else {
    $sql_drop_module[] = "DELETE FROM " . $db_config['prefix'] . "_" . $module_data . "_question WHERE lang='" . $lang . "'";
    $sql_drop_module[] = "DELETE FROM " . $db_config['prefix'] . "_" . $module_data . "_config WHERE config='siteterms_" . $lang . "'";
}

if ($lang == 'vi') {
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('B???n th??ch m??n th??? thao n??o nh???t', '" . $lang . "', 1, 1274840238, 1274840238)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('M??n ??n m?? b???n y??u th??ch', '" . $lang . "', 2, 1274840250, 1274840250)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('Th???n t?????ng ??i???n ???nh c???a b???n', '" . $lang . "', 3, 1274840257, 1274840257)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('B???n th??ch nh???c s??? n??o nh???t', '" . $lang . "', 4, 1274840264, 1274840264)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('Qu?? ngo???i c???a b???n ??? ????u', '" . $lang . "', 5, 1274840270, 1274840270)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('T??n cu???n s??ch &quot;g???i ?????u gi?????ng&quot;', '" . $lang . "', 6, 1274840278, 1274840278)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('Ng??y l??? m?? b???n lu??n mong ?????i', '" . $lang . "', 7, 1274840285, 1274840285)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('siteterms_vi', '<p> ????? tr??? th??nh th??nh vi??n, b???n ph???i cam k???t ?????ng ?? v???i c??c ??i???u kho???n d?????i ????y. Ch??ng t??i c?? th??? thay ?????i l???i nh???ng ??i???u kho???n n??y v??o b???t c??? l??c n??o v?? ch??ng t??i s??? c??? g???ng th??ng b??o ?????n b???n k???p th???i.<br /> <br /> B???n cam k???t kh??ng g???i b???t c??? b??i vi???t c?? n???i dung l???a ?????o, th?? t???c, thi???u v??n ho??; vu kh???ng, khi??u kh??ch, ??e do??? ng?????i kh??c; li??n quan ?????n c??c v???n ????? t??nh d???c hay b???t c??? n???i dung n??o vi ph???m lu???t ph??p c???a qu???c gia m?? b???n ??ang s???ng, lu???t ph??p c???a qu???c gia n??i ?????t m??y ch??? c???a website n??y hay lu???t ph??p qu???c t???. N???u v???n c??? t??nh vi ph???m, ngay l???p t???c b???n s??? b??? c???m tham gia v??o website. ?????a ch??? IP c???a t???t c??? c??c b??i vi???t ?????u ???????c ghi nh???n l???i ????? b???o v??? c??c ??i???u kho???n cam k???t n??y trong tr?????ng h???p b???n kh??ng tu??n th???.<br /> <br /> B???n ?????ng ?? r???ng website c?? quy???n g??? b???, s???a, di chuy???n ho???c kho?? b???t k??? b??i vi???t n??o trong website v??o b???t c??? l??c n??o tu??? theo nhu c???u c??ng vi???c.<br /> <br /> ????ng k?? l??m th??nh vi??n c???a ch??ng t??i, b???n c??ng ph???i ?????ng ?? r???ng, b???t k??? th??ng tin c?? nh??n n??o m?? b???n cung c???p ?????u ???????c l??u tr??? trong c?? s??? d??? li???u c???a h??? th???ng. M???c d?? nh???ng th??ng tin n??y s??? kh??ng ???????c cung c???p cho b???t k??? ng?????i th??? ba n??o kh??c m?? kh??ng ???????c s??? ?????ng ?? c???a b???n, ch??ng t??i kh??ng ch???u tr??ch nhi???m v??? vi???c nh???ng th??ng tin c?? nh??n n??y c???a b???n b??? l??? ra b??n ngo??i t??? nh???ng k??? ph?? ho???i c?? ?? ????? x???u t???n c??ng v??o c?? s??? d??? li???u c???a h??? th???ng.</p>', 1274757129)";
} elseif ($lang == 'fr') {
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('Votre lieu de naissance?', '" . $lang . "', 1, 1274841115, 1274841115)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('Votre anniversaire?', '" . $lang . "', 2, 1274841123, 1274841123)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('Votre livre pr??f??r???', '" . $lang . "', 3, 1274841131, 1274841131)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('Votre prof pr??f??r???', '" . $lang . "', 4, 1274841142, 1274841142)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('Votre chaine t??l?? pr??f??r??e?', '" . $lang . "', 5, 1274841150, 1274841150)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('siteterms_" . $lang . "', '<p align=\"center\"> <strong><u>TERMES ET CONDITIONS G??N??RALES</u></strong></p><p> <strong>I. OBJET</strong></p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; Les pr??sentes conditions g??n??rales ont pour objet de fixer les r??gles d???utilisation de notre site par les utilisateurs enregistr??s ou non.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; Tout utilisateur s???engage ?? respecter ces conditions lors de chacune de ses visites sur notre site.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Les utilisateurs enregistr??s ou non reconnaissent avoir pris connaissance des pr??sentes conditions g??n??rales et d??clarent les accepter sans r??serve.</p><p> </p><p> <strong>II. CODE DE CONDUITE</strong></p><p> <strong>Utilisation du code confidentiel</strong></p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Les ??l??ments d???identification (login et mot de passe) permettant ?? l???utilisateur enregistr?? de s???identifier et de se connecter ?? la partie priv??e du site sont personnels et confidentiels. Le mot de passe est modifiable en ligne par l&#039;utilisateur enregistr??, notamment en cas de perte ou de vol du mot de passe.</p><p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L???utilisateur enregistr?? est enti??rement responsable de l???utilisation des ??l??ments d???identification le concernant. Il s???engage ?? conserver secret ses ??l??ments d???identification et ?? ne pas les divulguer sous quelque forme que ce soit.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En cas de perte ou de vol du login, l&#039;utilisateur enregistr?? devra se r??inscrire.</p><p> <strong>Utilisation des rubriques</strong></p><p> L???utilisateur enregistr?? ou non s???engage ?? ne pas se servir de notre site pour :</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T??l??ch@rger, envoyer, transmettre par e-mail ou de toute autre mani??re tout contenu qui soit ill??gal, nuisible, mena??ant, abusif, constitutif de harc??lement, diffamatoire, vulgaire, obsc??ne, mena??ant pour la vie priv??e d???autrui, haineux, raciste ou autrement r??pr??hensible.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Porter atteinte d???une quelconque mani??re aux utilisateurs mineurs.</p><p> Nous nous r??servons le droit de supprimer ou modifier tout contenu disponible via son site d???administration.</p><p> </p><p> <strong>III. PARTICIPATION EDITORIALE</strong></p><p> Tout utilisateur du site, enregistr?? ou non peut participer ?? la partie ??ditoriale du site en en remplissant les formulaire disponibles en ligne.</p><p> En remplissant ces formulaires, l???utilisateur garantit :</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qu???il est bien l???auteur de la contribution propos??e et qu???il est titulaire des droits d???auteur y aff??rent, ou qu&#039;il a l&#039;autorisation explicite de l&#039;auteur de la contribution de la diffuser sur notre site.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp; Qu???il nous autorise ?? diffuser, publier, reproduire cette contribution sur notre site et ?? l???int??grer dans sa base de donn??es gratuitement.</p><p> </p><p> <strong>V. REGLES D???USAGE D???INTERNET</strong></p><p> Tout utilisateur du site d??clare accepter les caract??ristiques et les limites de l???internet et en particulier reconna??tre :</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qu???il est seul responsable de l???utilisation qu???il fait des informations pr??sentes sur le site. En cons??quence, nous ne saurions ??tre tenue responsable de quelconques dommages directs ou indirects d??coulant de l???utilisation de ces informations.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qu???il est seul responsable de l???utilisation du contenu des sites ayant un lien hypertexte avec notre site . Nous d??clinons toute responsabilit?? quant ?? leur contenu.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Que la communication de ses ??l??ments d???identification et d???une mani??re g??n??rale de toute information jug??e par lui comme sensible ou confidentielle est faite ?? ses risques et p??rils.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qu???il a connaissance de la nature de l???internet et en particulier de ses performances techniques et des temps de r??ponse pour consulter, interroger ou transf??rer des informations. Nous ne saurions ??tre tenue responsable des dysfonctionnements du r??seau internet.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qu???il lui appartient de prendre toutes mesures appropri??es de fa??on ?? prot??ger ses propres donn??es et logiciels de la contamination par d?????ventuels virus circulant ?? travers notre site. Nous ne pourrons ??tre tenue responsable des d??g??ts ??ventuels subis.</p><p> </p><p> <strong>VI. RESPONSABILITE</strong></p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alors m??me que nous s???efforcons que le contenu de notre site soit le plus fiable possible, nous ne pouvons donner aucune garantie quant ?? l???ensemble des informations pr??sentes sur le site, qu???elles soient fournies par notre site, par ses partenaires ou par tout tiers, par l???envoi d???e-mails ou de toute autre forme de communication. De m??me, nous &nbsp;n???apportons aucune garantie quant ?? l???utilisation desdites informations.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nous ne saurions en cons??quence ??tre tenu pour responsable du pr??judice ou dommage pouvant r??sulter de l???utilisation des informations pr??sentes sur notre site, ni d???erreurs ou omissions dans celles-ci. ous d??clinons toute responsabilit?? en ce qui concerne les contenus des sites web ??dit??s par des tiers et accessibles depuis notre site par des liens hypertextes.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Concernant les sites marchands mentionn??s dans les publicit??s affich??es sur notre site ou dans n&#039;importe quelle rubrique du site, nous ne sommes nullement responsable des litiges qui pourraient survenir entre un site marchand et un utilisateur.</p><p> &nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; De m??me, si l???utilisateur contracte avec des annonceurs pr??sents sur notre site, nous n???assumons aucune obligation ou responsabilit?? concernant la d??livrance des produits et services propos??s par ses partenaires commerciaux.</p><p> </p><p> <strong>VII. INFORMATIQUE ET LIBERTES</strong></p><p> L???utilisateur est inform?? que des informations nominatives le concernant sont collect??e lors de sa consultation de notre site . Ces informations, destin??es ?? notre site , pourront ??tre communiqu??es ?? des tiers ?? des fins commerciales, sauf opposition de l???utilisateur.</p><p> L???utilisateur dispose d???un droit d???acc??s, de modification, de rectification et de suppression des donn??es personnelles le concernant. Il doit exercer ce droit en adressant un courrier pr??cisant les modifications demand??es ?? l???administrateur de notre site.</p><p> Par l???acc??s ?? notre site, nous consons ?? l???utilisateur qui l???accepte, une licence d???utilisation pour les informations consult??es sur notre site.</p><p> La licence conf??re ?? l???utilisateur un droit d???usage priv??, non collectif et non exclusif sur les informations consult??es. Elle comprend le droit de reproduire et/ou de stocker ?? des fins strictement personnelles.</p><p> Toute mise en r??seau, toute rediffusion, sous quelque forme, m??me partielle, sont interdites.</p><p> Ce droit est personnel, il est r??serv?? ?? l???usage exclusif et non collectif de l???utilisateur. Il n???est transmissible en aucune mani??re.</p><p> La violation de ces dispositions imp??ratives soumet le contrevenant et toute personne responsable, aux peines civiles et p??nales pr??vues par la loi.</p><p> <strong>IX. RECLAMATIONS</strong></p><p> Les r??clamations aff??rentes ?? l&#039;inscription ?? notre site et ?? leurs conditions d???utilisation peuvent ??tre formul??es soit directement en ligne par courrier ??lectronique, soit par courrier adress?? ?? l???administrateur du site.</p><p> <strong>X. MODIFICATIONS</strong></p><p> Toute modification de ces conditions g??n??rales doit ??tre r??alis??e par ??crit entre les deux parties, par votre acceptation en ligne des termes mis ?? jour, ou, si vous poursuivez votre participation ?? notre site, apr??s mise ?? jour de ces termes par nous.</p><p> <strong>XI. DISPOSITIONS GENERALES</strong></p><p> En cas de non respect ou de non acceptation de ces conditions g??n??rales, nous nous r??servons le droit d&#039;exclure un utilisateur enregistr?? ou non de notre site .</p><p> Si l???une quelconque des stipulations des pr??sentes conditions est tenue pour nulle et sans objet, elle sera r??put??e non ??crite et n???entra??nera pas la nullit?? des autres stipulations.</p>', 1274757617)";
} else {
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('What is the first name of your favorite uncle?', '" . $lang . "', 1, 1274841115, 1274841115)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('whe-re did you meet your spouse', '" . $lang . "', 2, 1274841123, 1274841123)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('What is your oldest cousin&#039;s name?', '" . $lang . "', 3, 1274841131, 1274841131)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('What is your youngest child&#039;s username?', '" . $lang . "', 4, 1274841142, 1274841142)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('What is your oldest child&#039;s username?', '" . $lang . "', 5, 1274841150, 1274841150)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('What is the first name of your oldest niece?', '" . $lang . "', 6, 1274841158, 1274841158)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('What is the first name of your oldest nephew?', '" . $lang . "', 7, 1274841167, 1274841167)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('What is the first name of your favorite aunt?', '" . $lang . "', 8, 1274841175, 1274841175)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_question (title, lang, weight, add_time, edit_time) VALUES('whe-re did you spend your honeymoon?', '" . $lang . "', 9, 1274841183, 1274841183)";
    $sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $module_data . "_config (config, content, edit_time) VALUES ('siteterms_" . $lang . "', '<p style=\"text-align:center;\"> <strong>Website usage terms and conditions ??? sample template</strong></p><p> Welcome to our website. If you continue to browse and use this website you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]???s relationship with you in relation to this website.<br /> The term ???[business name]??? or ???us??? or ???we??? refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term ???you??? refers to the user or viewer of our website.<br /> The use of this website is subject to the following terms of use:<br /> ??? The content of the pages of this website is for your general information and use only. It is subject to change without notice.<br /> ??? Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.<br /> ??? Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.<br /> ??? This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.<br /> ??? All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.<br /> ??? Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.<br /> ??? fr0m time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).<br /> ??? You may not crea-te a link to this website fr0m another website or document without [business name]???s prior written consent.<br /> ??? Your use of this website and any dispute arising out of such use of the website is subject to the laws of England, Scotland and Wales.</p>', 1274757617)";
}