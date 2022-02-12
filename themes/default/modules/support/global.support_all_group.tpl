<!-- BEGIN: main -->
<!-- BEGIN: cat -->

<div id="support_content">
<ul>
	{CAT}
	<!-- BEGIN: loop -->
	<li class="media support">
		<a class="pull-left support_left" href="tel:{ROW.call}"><img src="{ROW.photo}" alt="{ROW.title}"></a>
		<div class="support_bg"><div class="support_arrow"></div>
		<div class="clearfix">
			<a href="tel:{ROW.call}"><i class="pull-left fa fa-user">&nbsp;</i>{ROW.title}</a><br>
			<a href="tel:{ROW.call}"class="phone"><i title="{ROW.title}" class="fa fa-phone">&nbsp;</i>{ROW.phone}</a>
		
		<!-- BEGIN: email --><a rel="nofollow" href="mailto:{ROW.email}"><i class="fa fa-envelope-o"></i> </a><!-- END: email -->

			
			</div>
		</div>
	</li>
	<!-- END: loop -->
</ul>

</div>
	<!-- END: cat -->
<link rel="stylesheet" type="text/css" media="screen" href="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/support.css" />

<!-- END: main -->