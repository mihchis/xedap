<!-- BEGIN: main -->
<script type="text/javascript">
	$(document).ready(function() {
	  $("#partner").owlCarousel({
		navigation : true,
		autoPlay: 3000,
		items : 4,
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [979,1]
	  });
	});
</script>
<h3>Khách hàng của chúng tôi</h3>
<div id="partner">
	<!-- BEGIN: loop -->
	<div class="item"><img src="{DATA.image}" alt="{DATA.title}"></div>
	<!-- END: loop -->
</div>
<!-- END: main -->