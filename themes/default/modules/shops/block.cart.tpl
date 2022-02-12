<!-- BEGIN: main -->
 	
 <div class="cat">
 <ul> 
       
        <li>
            <a title="{LANG.cart_check_out}" href="{LINK_VIEW}"style="color: #fff"><i class="fa fa-cart-arrow-down"></i> {LANG.cart_title} <span class="cart-nho">{num}</span> </a>
            <ul class="dropdown">
 <!-- BEGIN: enable -->
  <li><a title="{LANG.cart_check_out}" href="{LINK_VIEW}">Có <span style="color: #fc8a03">{num}</span> {LANG.cart_product_title}</a></li>
               <!-- BEGIN: price -->
	<li>
		<a>{LANG.cart_product_total} <span class="money">{total}</span> {money_unit}
		</a>
	</li>
	<!-- END: price -->
	
	
		<li>
		<a title="{LANG.point_cart_text}" href="{POINT_URL}">{LANG.point_cart_text}: <span class="money">{POINT}</span> </a>
	</li>
	
	
	<!-- END: enable -->
         
      <li><a title="{LANG.cart_check_out}" href="{LINK_VIEW}" id="submit_send">{LANG.cart_check_out}</a></li>
              
                 	<!-- BEGIN: wishlist -->
	<li>
		<a title="{LANG.wishlist_product}" href="{WISHLIST}">{LANG.wishlist_product} (<span id="wishlist_num_id">{NUM_ID}</span>)</a>
	</li>
	<!-- END: wishlist -->

	<!--  BEGIN: history -->
	<li>
		<a href="{LINK_HIS}">{LANG.history_title}</a>
	</li>
	<!--  END: history -->   
              
              
        </ul>
        </li>
       
    </ul>
 </div>  
 	
        <!-- END: main -->