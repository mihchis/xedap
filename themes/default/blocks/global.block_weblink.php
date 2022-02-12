<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2012 VINADES.,JSC. All rights reserved
 * @Createdate Sat, 10 Dec 2011 06:46:54 GMT
 */

if( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if( ! nv_function_exists( 'nv_block_weblink' ) )
{
	if( ! nv_function_exists( 'nv_check_theme_weblink' ) )
	{
		function nv_check_theme_weblink()
		{
			global $global_config;

			// kiểm tra theme chứa block nếu theme đang dùng không có sẽ gọi tới block trong theme mặc định (default) của hệ thống
			if( file_exists( NV_ROOTDIR . "/themes/" . $global_config['site_theme'] . "/blocks/global.block_weblink.tpl" ) )
			{
				$block_theme = $global_config['site_theme'];
			}
			else
			{
				$block_theme = "default";
			}
			return $block_theme;
		}

	}

	function nv_block_config_weblink( $module, $data_block, $lang_block )
	{
		global $site_mods;

		$array_target = array(
			'_blank' => 'Mở liên kết trong một cửa sổ mới hoặc tab',
			'_self' => 'Mở liên kết trên cùng cửa sổ',
		);

		$block_theme = nv_check_theme_weblink();

		$data_block['config_fontawesome'] = nv_htmlspecialchars( $data_block['config_fontawesome'] );
		$data_block['config_description'] = nv_htmlspecialchars( nv_br2nl( $data_block['config_description'] ) );
		$data_block['config_style'] = nv_htmlspecialchars( nv_br2nl( $data_block['config_style'] ) );
		$data_block['config_showstyle'] = ( $data_block['config_showstyle'] ) ? 'checked="checked"' : '';
		$data_block['config_rel'] = ( $data_block['config_id'] > 0 ) ? $data_block['config_id'] : 1;
		// Gọi thư viện XTemplate
		$xtpl = new XTemplate( 'global.block_weblink.tpl', NV_ROOTDIR . "/themes/" . $block_theme . "/blocks" );
		$xtpl->assign( 'LANG', $lang_block );
		$xtpl->assign( 'TEMPLATE', $block_theme );
		$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
		$xtpl->assign( 'DATA', $data_block );
 		
		if( empty( $data_block['config_data'] ) )
		{
			for( $num = 1; $num <= 10; ++$num )
			{
				$xtpl->assign( 'NUM', $num);
				$xtpl->parse( 'config.loop' );
			}
		}else
		{
			foreach( $data_block['config_data'] as $num => $value )
			{
				$xtpl->assign( 'NUM', $num);
				$xtpl->assign( 'TITLE', $value['title'] );
				$xtpl->assign( 'LINK', $value['link'] );
				$xtpl->parse( 'config.loop' );
			}
		}
		
		for( $id = 1; $id < 100; ++$id )
		{
			$xtpl->assign( 'ID', array(
				'key' => $id,
				'name' => $id,
				'selected' => ( $id == $data_block['config_id'] ) ? 'selected="selected"' : '' ) );
			$xtpl->parse( 'config.selector' );
		}
		
		foreach( $array_target as $key => $name )
		{
			$xtpl->assign( 'TARGET', array(
				'key' => $key,
				'name' => $name,
				'selected' => ( $key == $data_block['config_target'] ) ? 'selected="selected"' : '' ) );
			$xtpl->parse( 'config.target' );
		}
		
		$xtpl->parse( 'config' );
		return $xtpl->text( 'config' );

	}

	function nv_block_config_weblink_submit( $module, $lang_block )
	{
		global $nv_Request;
		$return = array();
		$return['error'] = array();
		$return['config'] = array();
		$return['config']['config_data'] = $nv_Request->get_typed_array( 'config_data', 'post', '', array() );
		$return['config']['config_target'] = $nv_Request->get_title( 'config_target', 'post', '' );
		$return['config']['config_id'] = $nv_Request->get_int( 'config_id', 'post', 1 );
		$return['config']['config_showstyle'] = $nv_Request->get_int( 'config_showstyle', 'post', 0 );
		$return['config']['config_style'] = $nv_Request->get_textarea( 'config_style', 'post', '', 'br', 1 );
		$return['config']['config_fontawesome'] = $nv_Request->get_string( 'config_fontawesome', 'post', '', 1 );

		return $return;
	}

	function nv_block_weblink( $block_config )
	{
		global $global_config, $site_mods;

		$block_theme = nv_check_theme_weblink();

		$xtpl = new XTemplate( "global.block_weblink.tpl", NV_ROOTDIR . "/themes/" . $block_theme . "/blocks" );
		$xtpl->assign( 'TEMPLATE', $block_theme );
		$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
		if( ! empty( $block_config['config_style'] ) && ! empty( $block_config['config_showstyle'] ) )
		{
			$block_config['config_style'] = nv_br2nl( $block_config['config_style'] );
			
			$xtpl->assign( 'STYLE', $block_config['config_style'] );
			$xtpl->parse( 'main.stylesheets' );
		}
  		$xtpl->assign( 'TARGET', $block_config['config_target'] );
  		$xtpl->assign( 'ID', $block_config['config_id'] );
		
		$num = 1;
		foreach( $block_config['config_data'] as $key => $loop )
		{ 
			if( !empty( $loop['title'] ) && !empty( $loop['link'] ) )
			{
				$loop['fontawesome'] = $block_config['config_fontawesome'];
				$loop['num'] = $num;
				$xtpl->assign( 'LOOP', $loop );
				$xtpl->parse( 'main.loop' );
				++$num;
			}
		}
		
		$xtpl->parse( 'main' );
		return $xtpl->text( 'main' );

	}

}
if( defined( 'NV_SYSTEM' ) )
{
	$content = nv_block_weblink( $block_config );
}
