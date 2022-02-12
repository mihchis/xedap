<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES ., JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Jan 17, 2011 11:34:27 AM
 */

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (defined('NV_IS_FILE_THEMES')) {
    // include config theme
    require NV_ROOTDIR . '/modules/support/support_config.php';
}

if (! nv_function_exists('support_bottom_right')) {
  
    
    function support_bottom_right($block_config)
    {
        global $nv_Cache, $db_config, $global_config, $site_mods, $module_info, $module_name, $module_file, $module_data, $lang_global, $catid, $home;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/support/global.support_bottom_right.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/support/global.support_bottom_right.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $array_support = array();
        $sql = 'SELECT id, parentid, title,phone,email,skype,facebook,  photo FROM ' . NV_PREFIXLANG . '_support_rows WHERE status=1 AND mid = ' . $block_config['menuid'] . ' ORDER BY weight ASC';
        $list = $nv_Cache->db($sql, '', $block_config['module']);
        foreach ($list as $row) {
          

                $array_support[$row['parentid']][$row['id']] = array(
                    'id' => $row['id'],
                    'title' => $row['title'],
                    'title_trim' => nv_clean60($row['title'], $block_config['title_length']),
					'email' => $row['email'],'phone' => $row['phone'],
                    'skype' => $row['skype'],
                    'facebook' => $row['facebook'],
                    'call' => nv_unhtmlspecialchars($row['phone']),
                    'photo' => (empty($row['photo'])) ? '' : NV_BASE_SITEURL . NV_UPLOADS_DIR . '/support/' . $row['photo']
                );
            
        }

        $xtpl = new XTemplate('global.support_bottom_right.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/support');
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('BLOCK_THEME', $block_theme);
        $xtpl->assign('THEME_SITE_HREF', NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA);

        if (!empty($array_support)) {
            foreach ($array_support[0] as $id => $item) {
                $xtpl->assign('PACORP_SUPPORT', $item);
              
                 if (! empty($item['email'])) { $xtpl->parse('main.support.email');}
                  if (! empty($item['skype'])) { $xtpl->parse('main.support.skype');}
                
                $xtpl->parse('main.support');
            }
        }

        $xtpl->parse('main');
        return $xtpl->text('main');
    }

 
}

if (defined('NV_SYSTEM')) {
    $content = support_bottom_right($block_config);
}
