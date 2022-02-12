/**
 * @license MIT 
 *
 * Create by dangdinhtu
 * website https://nuke.vn
 * blog http://dangdinhtu.com
 */
CKEDITOR.dialog.add( 'quangcao', function( editor ) {

    return {
        title: editor.lang.quangcao.dialogTitle,
        minWidth: 400,
        minHeight: 75,
        contents: [
            {
                id: 'tab-basic',
                label: 'Basic Settings',
                elements: [
                    {
                        type: 'text',
                        id: 'chiendich',
                        label: editor.lang.quangcao.insert,
						'default': 'idquangcao',
						setup : function( Node ){		
						
						},
						onChange:function(){
							var dialog=this.getDialog();
							newvalue=this.getValue();
							 
						} 
                    }

                ]
            }
        ],
        onOk: function() {
			 
			var selection = editor.getSelection();
            var element = selection.getStartElement();
			var oldId = element.getAttribute('id');
			
			var dialog = this;
			var iDchiendich = dialog.getValueOf('tab-basic', 'chiendich').trim();
			var idOf = '';
			if( idOf = editor.document.getById( oldId ) )
			{
				idOf.setAttribute('id', 'quangcao-' + iDchiendich);
			}else
			{
				
				var oTag = editor.document.createElement( 'div' );	
				oTag.setAttribute('id', 'quangcao-' + iDchiendich);
				oTag.setAttribute('class', 'boxchiendich');
				oTag.setHtml( editor.lang.quangcao.content );	
				editor.insertElement( oTag );
				editor.enterMode = 1;
			}
            
        },
		onShow: function() {
            var selection = editor.getSelection();
            var element = selection.getStartElement();
			var oldId = element.getAttribute('id');
			if( oldId != null &&  oldId != '')
			{ 
				oldId = oldId.replace('quangcao-', '');
				this.setValueOf('tab-basic', 'chiendich', oldId);
			}
			
        }

    };
});