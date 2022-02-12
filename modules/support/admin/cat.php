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

$arr = array();
$arr['title'] = '';
$arr['id'] = $nv_Request->get_int('id', 'post,get', 0);
$error = '';

if ($nv_Request->get_int('save', 'post')) {
    $arr['title'] = $nv_Request->get_title('title', 'post', '', 1);
    if (empty($arr['title'])) {
        $error = $lang_module['error_menu_block'];
    } elseif ($arr['id'] == 0) {
        $sql = "INSERT INTO " . NV_PREFIXLANG . "_" . $module_data . " (title) VALUES ( :title )";
        $data_insert = array();
        $data_insert['title'] = $arr['title'];
        $arr['id'] = $db->insert_id($sql, 'id', $data_insert);
        if (empty($arr['id'])) {
            $error = $lang_module['errorsave'];
        }
    } else {
        $stmt = $db->prepare('UPDATE ' . NV_PREFIXLANG . '_' . $module_data . ' SET title= :title WHERE id =' . $arr['id']);
        $stmt->bindParam(':title', $arr['title'], PDO::PARAM_STR);
        if (! $stmt->execute()) {
            $error = $lang_module['errorsave'];
        }
    }
    if (empty($error)) {
        $action_menu = $nv_Request->get_title('action_menu', 'post', '', 1);
        $weight = 0;
        $sort = 0;
        $mid = $arr['id'];
        if ($action_menu == 'sys_mod' or $action_menu == 'sys_mod_sub') {
            $db->query('DELETE FROM ' . NV_PREFIXLANG . '_' . $module_data . '_rows WHERE mid=' . $mid);
            unset($site_mods['menu'], $site_mods['comment']);
            foreach ($site_mods as $mod_name => $modvalues) {
                ++$weight;
                ++$sort;
                $lev = 0;
                $subitem = '';
                $parentid = nv_menu_insert_id($mid, 0, $modvalues['custom_title'], $weight, $sort, 0, $mod_name, '');
                if ($parentid and $action_menu == 'sys_mod_sub') {
                 
               
                    if (! empty($array_sub_id)) {
                        $db->query("UPDATE " . NV_PREFIXLANG . "_" . $module_data . "_rows SET subitem='" . implode(',', $array_sub_id) . "' WHERE id=" . $parentid);
                    }
                }
            }
        } elseif (isset($site_mods[$action_menu])) {
            $mod_name = $action_menu;
            $modvalues = $site_mods[$action_menu];
            $db->query('DELETE FROM ' . NV_PREFIXLANG . '_' . $module_data . '_rows WHERE mid=' . $mid);
           
                   }
        $nv_Cache->delMod($module_name);
        Header('Location: ' . NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name);
        exit();
    }
} elseif (! empty($arr['id'])) {
    $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . ' WHERE id=' . $arr['id'];
    $result = $db->query($sql);
    $arr = $result->fetch();
    if (empty($arr)) {
        nv_info_die($lang_global['error_404_title'], $lang_global['error_404_title'], $lang_global['error_404_content']);
    }
}

$xtpl = new XTemplate($op . '.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('NV_BASE_ADMINURL', NV_BASE_ADMINURL);
$xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
$xtpl->assign('NV_OP_VARIABLE', NV_OP_VARIABLE);
$xtpl->assign('MODULE_NAME', $module_name);
$xtpl->assign('OP', $op);
if (! empty($error)) {
    $xtpl->assign('ERROR', $error);
    $xtpl->parse('main.error');
}

$xtpl->assign('DATAFORM', $arr);
unset($site_mods['menu'], $site_mods['comment']);
foreach ($site_mods as $mod_name => $modvalues) {
    $xtpl->assign('OPTIONVALUE', $mod_name);
    $xtpl->assign('OPTIONTITLE', $modvalues['custom_title']);
    $xtpl->parse('main.action_menu');
}

if ($arr['id']) {
    $page_title = $lang_module['edit_menu'];
    $op = '';
} else {
    $page_title = $lang_module['add_menu'];
}

$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
