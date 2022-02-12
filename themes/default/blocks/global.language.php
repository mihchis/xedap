<?php
 
/**
* @Project NUKEVIET 4.x
* @Author Mr.Thinh (thinhwebhp@gmail.com)
* @Copyright (C) 2016 Thinhweb Blog. All rights reserved
* @License GNU/GPL version 2 or any later version
* @Createdate Wed, 08 June 2016 12:41:32 GMT
*/
 
if (! defined('NV_MAINFILE')) {
 die('Stop!!!');
}
 
if (! nv_function_exists('nv_language')) {
function nv_language($block_config)
{
 global $global_config, $site_mods, $lang_global, $language_array;
 
 if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.language.tpl')) {
  $block_theme = $global_config['module_theme'];
 } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.language.tpl')) {
  $block_theme = $global_config['site_theme'];
 } else {
  $block_theme = 'default';
 }
 
 $xtpl = new XTemplate('global.language.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
 $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
 $xtpl->assign('BLOCK_THEME', $block_theme);
 $xtpl->assign('SELECT_LANGUAGE', $lang_global['langsite']);
 
 // Multiple languages
 if ($global_config['lang_multi'] and sizeof($global_config['allow_sitelangs']) > 1) {
  foreach ($global_config['allow_sitelangs'] as $lang_i) {
  $xtpl->assign('LANGSITENAME', $language_array[$lang_i]['name']);
  $xtpl->assign('LANGSITEURL', NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . $lang_i);
  $xtpl->assign( 'ICON', NV_BASE_SITEURL . 'themes/' . $global_config['module_theme'] . '/images/icons/' . $lang_i . '.png' );
  $xtpl->parse( 'main.language.item' );
  }
  $xtpl->parse('main.language');
 }
 
 $xtpl->parse('main');
 return $xtpl->text('main');
 }
}
 
if (defined('NV_SYSTEM')) {
 $content = nv_language($block_config);
}