<!-- BEGIN: main  -->
<!-- BEGIN: stylesheets  -->
<style type="text/css" rel="chaoban">
{STYLE}
</style>
<!-- END: stylesheets  -->
<ul id="config-menu-{ID}"class="menu">
	<!-- BEGIN: loop  -->
	<li class="menu-item menu-item{LOOP.num}">
		<a href="{LOOP.link}">{LOOP.fontawesome} {LOOP.title}</a>
	</li>
	<!-- END: loop -->
</ul>

<!-- END: main -->

<!-- BEGIN: config  -->

<!-- BEGIN: loop  -->
<tr>
    <td>Tiêu đề - Liên kết {NUM}</td>
    <td>
        <div class="col-sm-12">
			<div class="row">
				<input placeholder="Tiêu đề {NUM}" class="form-control" type="text" name="config_data[{NUM}][title]" value="{TITLE}">
			</div>
		</div>
		<div class="col-sm-12">
			<div class="row">
				<input placeholder="Liên kết {NUM}" class="form-control" type="text" name="config_data[{NUM}][link]" value="{LINK}">
			</div>
		</div>
	</td>
</tr>
<!-- END: loop  -->
<tr>
    <td>Cách mở liên kết</td>
    <td>
       <select name="config_target" class="form-control">
			<!-- BEGIN: target  -->
			<option value="{TARGET.key}" {TARGET.selected} >{TARGET.name}</option>
			<!-- END: target  -->
	   </select>
    </td>
</tr>
<tr>
    <td>Font awaresome</td>
    <td>
        <div class="col-sm-24">
			<div class="row">
				<input placeholder="Thẻ Font awaresome" class="form-control" type="text" name="config_fontawesome" value="{DATA.config_fontawesome}">
			</div>
		</div>
    </td>
</tr>

<tr>
    <td>Đối tượng (HTML ID)</td>
    <td>
       <select name="config_id" id="config_id" class="form-control" onchange="change_element();">
			<!-- BEGIN: selector  -->
			<option value="{ID.key}" {ID.selected} >{ID.name}</option>
			<!-- END: selector  -->
	   </select>
    </td>
</tr>
<tr>
    <td>Hiện CSS</td>
    <td>
      <input type="checkbox" name="config_showstyle" value="1" {DATA.config_showstyle} >
    </td>
</tr>
<tr>
    <td>CSS (Style Sheets)</td>
    <td>
        <textarea style="resize: vertical;" rows="6" placeholder="Nhập định dạng css của bạn vào đây" class="form-control" id="config_style" rel="{DATA.config_rel}" name="config_style">{DATA.config_style}</textarea>
    </td>
</tr>
<tr style="display: none">
<script type="text/javascript">
	function change_element()
	{
		var id = $('#config_id').val();
		var config_style = $('#config_style').val();
		var rel = $('#config_style').attr('rel');
		var regex = new RegExp("config-menu-" + rel + "", "g");
		var res = config_style.replace(regex, 'config-menu-' + id);
		$('#config_style').val( res );
		$('#config_style').attr('rel', id);
	}
</script> 
</tr>

<!-- END: config -->
