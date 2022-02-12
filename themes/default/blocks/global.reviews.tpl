<!-- BEGIN: main -->
<script>
	$(document).ready(function() {
		$("#customer").owlCarousel({
		autoPlay: 3500,
		items : 2,
		itemsDesktop : [1199,2],
		itemsDesktopSmall : [979,2],
		itemsMobile : [768,1],
		
		});
	});				
</script>
<h3>Sự hài lòng của khách hàng</h3>
<h4>chính là thành công lớn nhất của chúng tôi</h4>
<div id="customer" class="owl-carousel owl-theme">
	<!-- BEGIN: loop -->
	<div class="item">
		<div class="reviews-thumbnail col-xs-6 col-sm-6 col-md-6">
			<img src="{THUMBURL}" alt="{NAME}"/>
		</div>
		<div class="content col-xs-18 col-sm-18 col-md-18">
			<span class="dialog"></span>
			{CONTENT}
			<span class="customer-name">{NAME}</span>
		</div>
	</div>
	<!-- END: loop -->
</div>
<!-- END: main -->
