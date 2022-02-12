<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2.min.css">
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2.min.js"></script>
<script type="text/javascript">
	var cat = '{LANG.cat}';
	var caton = '{LANG.caton}';
	var nv_lang_data = '{NV_LANG_DATA}';
</script>
<!-- BEGIN: table -->
<form class="navbar-form" method="post" action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}&mid={DATA.mid}&parentid={DATA.parentid}">
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			
			<thead>
				<tr>
					<th class="text-center"><input name="check_all[]" value="yes" onclick="nv_checkAll(this.form, 'idcheck[]', 'check_all[]',this.checked);" type="checkbox"></th>
					<th>{LANG.number}</th>
					<th>{LANG.title}</th>
					<th class="hidden-xs">{LANG.phone}</th>
					<th class="text-center hidden-xs">{GLANG.email}</th>
					<th class="text-center">{LANG.display}</th>
					<th class="text-center">{LANG.action}</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="7">
						<select id="action" name="action" class="form-control">
							<option value="delete">{LANG.delete}</option>
						</select>
						<input onclick="return nv_main_action(this.form, '{LANG.msgnocheck}')" name="submit" type="submit" value="{LANG.action_form}" class="btn btn-primary w100" />
					</td>
				</tr>
			</tfoot>
			<tbody>
				<!-- BEGIN: loop1 -->
				<tr>
					<td class="text-center"><input type="checkbox" name="idcheck[]" value="{ROW.id}" onclick="nv_UncheckAll(this.form, 'idcheck[]', 'check_all[]', this.checked);"></td>
					<td class="text-center">
						<select id="change_weight_{ROW.id}" onchange="nv_chang_weight_item('{ROW.id}','{ROW.mid}','weight');" class="form-control">
							<!-- BEGIN: weight -->
							<option value="{stt}" {select}>{stt}</option>
							<!-- END: weight -->
						</select>
					</td>
					<td>
	                    <!-- BEGIN: photo -->
	                    <img src="{ROW.photo}" height="30px" />
	                    <!-- END: photo -->
	                   <strong>{ROW.title} </strong>
	               
				
					</td>
					<td class="text-center hidden-xs">{ROW.phone}</td>
					<td class="text-center hidden-xs">{ROW.email}</td>
					
					<td class="text-center"> <input type="checkbox" id="change_active_{ROW.id}" onclick="nv_change_active({ROW.id})" {ROW.active} /> </td>
					<td class="text-center">
					
						<em class="fa fa-edit fa-lg">&nbsp;</em> <a href="{ROW.edit_url}">{LANG.edit}</a>&nbsp;
						<em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_menu_item_delete({ROW.id},{ROW.mid});">{LANG.delete}</a>
					</td>
				</tr>
				<!-- END: loop1 -->
			</tbody>
		</table>
	</div>
</form>
<!-- END: table -->
<!-- BEGIN: error -->
<div class="alert alert-danger">{ERROR}</div>
<!-- END: error -->
<form id="edit" action="{FORM_ACTION}" method="post">
	<input type="hidden" name="id" value="{DATA.id}">
	<input type="hidden" name="mid" value="{DATA.mid}">
	
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<caption><em class="fa fa-file-text-o">&nbsp;</em>{FORM_CAPTION}</caption>
			<colgroup>
				<col class="w150" />
				<col class="w300" />
				<col />
			</colgroup>
			<tfoot>
				<tr>
					<td colspan="2" class="text-center"><input name="submit1" type="submit" value="{LANG.save}" class="btn btn-primary w100" /></td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td><strong>{LANG.name_block}</strong></td>
					<td>
						<select name="item_menu" id="item_menu_{key}" onchange="nv_link_menu('{key}', {DATA.parentid});" class="form-control w200">
							<!-- BEGIN: loop -->
							<option value="{key}" {select}>{val}</option>
							<!-- END: loop -->
						</select>
					</td>
					
				</tr>
				
			
				<tr>
					<td><strong>{LANG.title}</strong><sup class="required">(*)</sup></td>
					<td><input type="text" name="title" id="title" class="w300 form-control" value="{DATA.title}"/></td>
				
				</tr>
				<tr>
					<td><strong>{LANG.phone}</strong><sup class="required">(*)</sup></td>
					<td><input type="text" name="phone" id="phone" class="w300 form-control" value="{DATA.phone}"/></td>
				</tr>
				<tr>
					<td><strong>{LANG.email}</strong></td>
					<td><input type="text" name="email" id="email" class="w300 form-control" value="{DATA.email}"/></td>
				</tr>
				<tr>
					<td><strong>{LANG.skype}</strong></td>
					<td><input type="text" name="skype" id="skype" class="w300 form-control" value="{DATA.skype}"/></td>
				
				</tr>
				<tr>
					<td><strong>{LANG.facebook}</strong></td>
					<td><input type="text" name="facebook" id="facebook" class="w300 form-control" value="{DATA.facebook}"/></td>
				
				</tr>
				
                <tr>
					<td><strong>{LANG.photo}</strong></td>
					<td>
						<input class="form-control w200 pull-left" type="text" name="photo" id="photo" value="{DATA.photo}"/>
						&nbsp;<input id="select-img-menurow" type="button" value="Browse" name="selectimg" class="btn btn-info" />
					</td>
                 
				</tr>
				
				
				
				
				
			</tbody>
		</table>
	</div>
</form>
<script type="text/javascript">
var CFG = [];
CFG.upload_current = '{UPLOAD_CURRENT}';
$(document).ready(function() {
	$("#parentid, #module_name_page").select2();
});
</script>
<!-- END: main -->