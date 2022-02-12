<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 3/25/2010 18:6
 */

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_page_carousel')) {

	if (! nv_function_exists('nv_resize_crop_images')) {
		function nv_resize_crop_images( $img_path, $width, $height, $module_name = '', $id = 0 )
		{
			$new_img_path = str_replace( NV_ROOTDIR, '', $img_path );
			if( file_exists( $img_path ) )
			{
				$imginfo = nv_is_image( $img_path );
				$basename = basename( $img_path );
				$basename = preg_replace( '/^\W+|\W+$/', '', $basename );
				$basename = preg_replace( '/[ ]+/', '_', $basename );
				$basename = strtolower( preg_replace( '/\W-/', '', $basename ) );
				if( $imginfo['width'] > $width or $imginfo['height'] > $height )
				{
					$basename = preg_replace( '/(.*)(\.[a-zA-Z]+)$/', $module_name . '_' . $id . '_\1_' . $width . '-' . $height . '\2', $basename );
					if( file_exists( NV_ROOTDIR . '/' . NV_TEMP_DIR . '/' . $basename ) )
					{
						$new_img_path = NV_BASE_SITEURL . NV_TEMP_DIR . '/' . $basename;
					}
					else
					{
						$img_path = new NukeViet\Files\Image( $img_path, NV_MAX_WIDTH, NV_MAX_HEIGHT );

						$thumb_width = $width;
						$thumb_height = $height;
						$maxwh = max( $thumb_width, $thumb_height );
						if( $img_path->fileinfo['width'] > $img_path->fileinfo['height'] )
						{
							$width = 0;
							$height = $maxwh;
						}
						else
						{
							$width = $maxwh;
							$height = 0;
						}

						$img_path->resizeXY( $width, $height );
						$img_path->cropFromCenter( $thumb_width, $thumb_height );
						$img_path->save( NV_ROOTDIR . '/' . NV_TEMP_DIR, $basename );
						if( file_exists( NV_ROOTDIR . '/' . NV_TEMP_DIR . '/' . $basename ) )
						{
							$new_img_path = NV_BASE_SITEURL . NV_TEMP_DIR . '/' . $basename;
						}
					}
				}
			}
			return $new_img_path;
		}
	}

    function nv_block_config_page_carousel($module, $data_block, $lang_block)
    {
        global $db, $db_config, $site_mods, $nv_Cache;
        $html = '';
		$html .= "<tr>";
		$html .= "	<td>" . $lang_block['page_module'] . "</td>";
		$html .= "	<td><select name=\"config_page_module\" class=\"form-control\">\n";
		$sql = "SELECT title, custom_title, module_data FROM " . $db_config['prefix'] . "_" . NV_LANG_DATA . "_modules WHERE module_file = 'page'";
		$list = $nv_Cache->db( $sql, 'title', $module );
		foreach( $list as $l )
		{
			$sel = ( $data_block['page_module'] == $l['title'] ) ? ' selected' : '';
			$html .= "<option value=\"" . $l['title'] . "\" " . $sel . ">" . $l['custom_title'] . "</option>\n";
		}
		$html .= "	</select></td>\n";
		$html .= "</tr>";
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['title_length'] . '</td>';
        $html .= '	<td><input type="text" class="form-control" name="config_title_length" size="5" value="' . $data_block['title_length'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '	<td>' . $lang_block['numrow'] . '</td>';
        $html .= '	<td><input type="text" name="config_numrow" class="form-control" size="5" value="' . $data_block['numrow'] . '"/></td>';
        $html .= '</tr>';
        return $html;
    }

    function nv_block_config_page_carousel_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['page_module'] = $nv_Request->get_title('config_page_module', 'post', 'page');
        $return['config']['title_length'] = $nv_Request->get_int('config_title_length', 'post', 24);
        $return['config']['numrow'] = $nv_Request->get_int('config_numrow', 'post', 5);
        return $return;
    }

    /**
     * nv_page_carousel()
     *
     * @return
     */
    function nv_page_carousel($block_config)
    {
        global $nv_Cache, $global_config, $site_mods, $db, $module_name;

        $module = $block_config['page_module'];

        if (! isset($site_mods[$module])) {
            return '';
        }

        $db->sqlreset()
            ->select('id, title, alias, description, image')
            ->from(NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'])
            ->where('status = 1')
            ->order('weight ASC');

        $list = $nv_Cache->db($db->sql(), 'id', $module);

        if (!empty($list)) {
            if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/block.page_carousel.tpl')) {
                $block_theme = $global_config['module_theme'];
            } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/block.page_carousel.tpl')) {
                $block_theme = $global_config['site_theme'];
            } else {
                $block_theme = 'default';
            }

            $xtpl = new XTemplate('block.page_carousel.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
			$xtpl->assign('BLOCK', $block_config);
			$xtpl->assign('TEMPLATE', $block_theme);

            foreach ($list as $l) {
                $l['title_clean60'] = nv_clean60($l['title'], $block_config['title_length']);
                $l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'] . $global_config['rewrite_exturl'];
				if(!empty($l['image'])){
					$img_path = NV_ROOTDIR . '/' . NV_UPLOADS_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $l['image'];
					$l['image'] = nv_resize_crop_images($img_path, 100, 100, $module, $l['id']);
				}else{
					$l['image'] = NV_BASE_SITEURL . 'themes/' . $block_theme . '/images/no_image.gif';
				}
                $xtpl->assign('ROW', $l);
                $xtpl->parse('main.loop');
            }

            $xtpl->parse('main');
            return $xtpl->text('main');
        } else {
            return '';
        }
    }
}
if (defined('NV_SYSTEM')) {
    $content = nv_page_carousel($block_config);
}
