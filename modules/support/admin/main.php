<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 21-04-2011 11:17
 */

if (! defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}

$array_menu_type = array();
$arr = array();

$arr['id'] = $nv_Request->get_int('id', 'post,get', 0);

$page_title = $lang_module['m_list'];

// Delete menu
if ($nv_Request->isset_request('del', 'post')) {
    if (! defined('NV_IS_AJAX')) {
        die('Wrong URL');
    }

    $id = $nv_Request->get_int('id', 'post', 0);

    $query = 'SELECT title FROM ' . NV_PREFIXLANG . '_' . $module_data . ' WHERE id=' . $id;
    $title = $db->query($query)->fetchColumn();

    if (empty($title)) {
        die('NO_' . $id);
    }

    if ($db->exec('DELETE FROM ' . NV_PREFIXLANG . '_' . $module_data . ' WHERE id = ' . $id)) {
        $db->query('DELETE FROM ' . NV_PREFIXLANG . '_' . $module_data . '_rows WHERE mid = ' . $id);
        nv_insert_logs(NV_LANG_DATA, $module_name, 'delete support id: ' . $id, $title, $admin_info['userid']);
        $nv_Cache->delMod($module_name);
    } else {
        die('NO_' . $id);
    }

    die('OK_' . $id);
}

// List menu
$db->sqlreset()
    ->select('*')
    ->from(NV_PREFIXLANG . '_' . $module_data)
    ->order('id ASC');

$query2 = $db->query($db->sql());

$array = array();
$a = 0;
while ($row = $query2->fetch()) {
    $arr_items = array();
    $sql = 'SELECT title FROM ' . NV_PREFIXLANG . '_' . $module_data . '_rows WHERE mid = ' . $row['id'] . ' ORDER BY weight ASC';
    $result = $db->query($sql);
    while (list($title_i) = $result->fetch(3)) {
        $arr_items[] = $title_i;
    }

    ++$a;
    $array[$row['id']] = array(
        'id' => $row['id'],
        'nb' => $a,
        'title' => $row['title'],      
        'link_view' => NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=rows&amp;mid=' . $row['id'],
        'edit_url' => NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=cat&amp;id=' . $row['id']
    );
}


$xtpl = new XTemplate('main.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
if (empty($array)) {
    $xtpl->assign('ERROR', $lang_module['data_no']);
    $xtpl->parse('main.error');
} else {
    foreach ($array as $row) {
        $xtpl->assign('ROW', $row);
        $xtpl->parse('main.table.loop1');
    }
    $xtpl->parse('main.table');
}

$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
