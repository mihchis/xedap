<!-- BEGIN: main -->
<div id="support_pacorp">
<div id="hide_pacorp"><a href="javascript:hide_pacorp()">X đóng lại <div id="iconsupport"></div></a></div>

<div id="support_content">
<ul>
	<!-- BEGIN: support -->
	<li class="media support">
		<a class="pull-left support_left" href="tel:{PACORP_SUPPORT.call}"><img src="{PACORP_SUPPORT.photo}" alt="{PACORP_SUPPORT.title}"></a>
		<div class="support_bg"><div class="support_arrow"></div>
		<div class="clearfix">
			<a href="tel:{PACORP_SUPPORT.call}"><i class="pull-left fa fa-user">&nbsp;</i>{PACORP_SUPPORT.title_trim}</a><br>
			<a href="tel:{PACORP_SUPPORT.call}"class="phone"><i title="{PACORP_SUPPORT.title}" class="fa fa-phone">&nbsp;</i>{PACORP_SUPPORT.phone}</a>
		<!-- BEGIN: email --><a rel="nofollow" href="mailto:{PACORP_SUPPORT.email}"><i class="fa fa-envelope-o"></i> </a><!-- END: email -->
		<!-- BEGIN: skype --><a href="skype:{PACORP_SUPPORT.skype}?chat" rel="nofollow"> <i class="fa fa-skype"></i></a><!-- END: skype -->
			</div>
		</div>
	</li>
	<!-- END: support -->
</ul>

</div>
</div>
<link rel="stylesheet" type="text/css" media="screen" href="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/support.css" />
<script type="text/javascript">
function hide_pacorp() {
    var content = document.getElementById('support_content');
    var hide = document.getElementById('hide_pacorp');
    if (content.style.display == "none")
    {content.style.display = "block"; hide.innerHTML = '<a href="javascript:hide_pacorp()">X đóng lại<div id="iconsupport"></div> </a>'; }
        else { content.style.display = "none"; hide.innerHTML = '<a href="javascript:hide_pacorp()" style="font-size:18px">- Hỗ trợ <div id="iconsupport"></div> </a>';
    }
    }
</script>
<!-- END: main -->
