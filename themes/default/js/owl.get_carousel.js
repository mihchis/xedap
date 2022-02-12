$(document).ready(function() {

  $("#owl-news-new").owlCarousel({
  	autoPlay: 3000,
  	slideSpeed : 500,
  	paginationSpeed : 500,
  	itemsCustom : [
        [0, 1],
        [450, 3],
        [600, 5]
      ],
    navigation:true,
    afterInit : function(elem){
      var that = this
      that.owlControls.prependTo(elem)
    }
  });

});