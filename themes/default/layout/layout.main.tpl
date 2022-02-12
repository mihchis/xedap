<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div id="slide">
	<div class="wraper">
		<div class="container">
			[SLIDE]
		</div>
	</div>
	<div class="top"></div>
	<div class="bottom"></div>
	<div class="tt-overlay"></div>
</div>
<div class="row">
	[HEADER]
</div>
<div class="row">
	<div class="col-md-24">
		[TOP]
		{MODULE_CONTENT}
		<div class="col-md-8">
        <div class="block_defalt">
	[VIDEO1]
        </div>
        </div>
        <div class="col-md-8">
        <div class="block_defalt">
	[VIDEO2]
        </div>
        </div>
        <div class="col-md-8">
        <div class="block_defalt">
	[VIDEO3]
        </div>
        </div>
	</div>
</div>
<div class="container">    
   <div class="reviews">               
				<div class="row">
					[KHACHHANG]
				</div>
       
    </div>
</div>
<div class="row">
<div class="col-md-12">
	[QC-LEFT]
 </div>
 <div class="col-md-12">
	[QC-RIGHT]
 </div>
</div>
<div class="row">
	[FOOTER]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->