/**
 * @license MIT 
 *
 * Create by dangdinhtu
 * website https://nuke.vn
 * blog http://dangdinhtu.com
 */
CKEDITOR.plugins.add( 'quangcao', {
    icons: 'quangcao',
	lang : ['vi', 'en'],
    init: function( editor ) {
 
		editor.addCommand('quangcao', new CKEDITOR.dialogCommand('quangcao'));
        editor.ui.addButton('quangcao', {
            label: editor.lang.quangcao.label,
            command: 'quangcao',
            toolbar: 'paragraph'
        });

        CKEDITOR.dialog.add('quangcao', this.path + 'dialogs/quangcao.js');
        editor.addContentsCss( this.path + 'styles/quangcao.css' );
		
		editor.on( 'doubleclick', function( evt ) {
 			var element = evt.data.element;
			var bx = element.getAttribute('class');
			var id = element.getAttribute('id');
			if( bx == 'boxchiendich' )
			{		 
				evt.data.dialog = 'quangcao'; 
			} 
			 
		} );
		
		if (editor.contextMenu) {
				editor.contextMenu.addListener(function(element, selection) {					
				quangcao : CKEDITOR.TRISTATE_OFF
			});
		}
		
    } 
});