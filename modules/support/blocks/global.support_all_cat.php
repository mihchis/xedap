<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sat, 10 Dec 2011 06:46:54 GMT
 */

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_block_support_cat')) {
    function nv_block_config_support_cat($module, $data_block, $lang_block)
    {
        global $nv_Cache, $site_mods;

        $html = '<tr>';
        $html .= '<td>' . $lang_block['catid'] . '</td>';
        $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . ' ORDER BY id ASC';
        $list = $nv_Cache->db($sql, '', $module);
        $html .= '<td>';
        foreach ($list as $l) {
            $xtitle_i = '';

            if ($l['lev'] > 0) {
                for ($i = 1; $i <= $l['lev']; ++$i) {
                    $xtitle_i .= '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                }
            }
            $html .= $xtitle_i . '<label><input type="checkbox" name="config_id[]" value="' . $l['id'] . '" ' . ((in_array($l['id'], $data_block['id'])) ? ' checked="checked"' : '') . '</input>' . $l['title'] . '</label><br />';
        }
        $html .= '</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_block['numrow'] . '</td>';
        $html .= '<td><input type="text" class="form-control w200" name="config_numrow" size="5" value="' . $data_block['numrow'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_block['showtooltip'] . '</td>';
       
        $html .= '</tr>';
        return $html;
    }

    function nv_block_config_support_cat_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['id'] = $nv_Request->get_array('config_id', 'post', array());
       
        return $return;
    }

    function nv_block_support_cat($block_config)
    {
        global $nv_Cache, $module_array_cat, $module_info, $site_mods, $module_config, $global_config, $db;
        $module = $block_config['module'];
        $show_no_image = $module_config[$module]['show_no_image'];
        $blockwidth = $module_config[$module]['blockwidth'];

        if (empty($block_config['id'])) {
            return '';
        }

        $id = implode(',', $block_config['id']);

        $db->sqlreset()
            ->select('id, mid, title,phone,email,facebook,skype,photo')
            ->from(NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_rows')
            ->where('status= 1 AND mid IN(' . $id . ')')
            ->order('id ASC');
        $list = $nv_Cache->db($db->sql(), '', $module);

        if (! empty($list)) {
            if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme']  . '/modules/support/global.support_all_group.tpl')) {
                $block_theme = $global_config['module_theme'] ;
            } else {
                $block_theme = 'default';
            }

            $xtpl = new XTemplate('global.support_all_group.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/support');
            $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
            $xtpl->assign('TEMPLATE', $block_theme);

            foreach ($list as $l) {
              
              $l['photo'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $l['photo'];
   
      $l['call']= explode('.', $l['phone'] );
    
			
                $xtpl->assign('ROW', $l);
                
                 if (! empty($l['email'])) { $xtpl->parse('main.cat.loop.email');}
                  if (! empty($l['skype'])) { $xtpl->parse('main.cat.loop.skype');}
                   if (! empty($l['facebook'])) { $xtpl->parse('main.cat.loop.facebook');}
                $xtpl->parse('main.cat.loop');
            }

			
           $xtpl->parse('main.cat');

            $xtpl->parse('main');
            return $xtpl->text('main');
        }
    }
}
if (defined('NV_SYSTEM')) {
    global $nv_Cache, $site_mods, $module_name, $global_array_cat, $module_array_cat;
    $module = $block_config['module'];
    if (isset($site_mods[$module])) {
        if ($module == $module_name) {
            $module_array_cat = $global_array_cat;
            unset($module_array_cat[0]);
        } else {
            $module_array_cat = array();
            $sql = 'SELECT id,  title FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . ' ORDER BY id ASC';
            $list = $nv_Cache->db($sql, 'id', $module);
            foreach ($list as $l) {
                $module_array_cat[$l['id']] = $l;
   
            }
        }
        $content = nv_block_support_cat($block_config);
    }
}
