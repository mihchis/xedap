<!-- BEGIN: main -->
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet" />

<div class="page_slider">
	<!-- BEGIN: loop -->
	<div class="slide text-center">
		<a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.image}" title="{ROW.title}" width="150" height="120" style="display: block; margin-left: auto; margin-right: auto; height: 150" /></a>
		<h3><a href="{ROW.link}" title="{ROW.title}"><strong>{ROW.title_clean60}</strong></a></h3>
	</div>
	<!-- END: loop  -->
</div>

<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jquery.bxslider/jquery.bxslider.min.js"></script>
<script>
	$(document).ready(function(){
		$('.page_slider').bxSlider({
		    slideWidth: 160,
		    maxSlides: '{BLOCK.numrow}',
		    slideMargin: 10,
		    pager: false,
		    randomStart: true
		});
		$('.bx-wrapper').css('margin-bottom', 0);
	});
</script>
<!-- END: main -->