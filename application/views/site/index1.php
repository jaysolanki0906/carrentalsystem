
<!--Vehicles-->
<?php if (!empty($vehicles)) {?>
<div class="scroll-up">
   <div class="container">
      <div class="section-margin mb-3">
         <div class="row">
            <div class="col-md-12 text-center">
              <h1 class="section-head"> <?php echo $this->lang->line('cars');?></h1>
             
            </div>
         </div>
		 
		 
         <div class="row">
            <ul class="bxslider" >
               <?php foreach ($vehicles as $row):?>
               <div class="col-md-3 wi-re">
                  <div class="first-car">
                     <div class="first-car-hed"><?php echo strtoupper($row->name);?></div>

                     <div class="first-car-img"> <img src="<?php echo get_vehicle_image($row->image);?>" width="100%"/> </div>
                        <div class="col-md-8 padding-p-r">
                           <aside class="rate"><?php echo $this->lang->line('starts_from');?>: <?php 
						              echo $this->config->item('site_settings')->currency_symbol." ".$row->cost_starting_from ?></aside>
                          
                        </div>

                  </div>
                  <div class="clearfix"></div>
               </div>
               <?php endforeach; ?>
            </ul>
         </div>
      </div>
   </div>
</div>
<?php } ?>


<?php if (!empty($vehicles)) {?>
<div class="scroll-up">
   <div class="container">
      <div class="section-margin mb-3">
         <div class="row">
            <div class="col-md-12 text-center">
              <h1 class="section-head"> <?php echo $this->lang->line('hotels');?></h1>
             
            </div>
         </div>
     
     
         <div class="row">
            <ul class="bxslider" >
               <?php foreach ($vehicles as $row):?>
               <div class="col-md-3 wi-re">
                  <div class="first-car">
                     <div class="first-car-hed"><?php echo strtoupper($row->name);?></div>

                     <div class="first-car-img"> <img src="<?php echo get_vehicle_image($row->image);?>" width="100%"/> </div>
                        <div class="col-md-8 padding-p-r">
                           <aside class="rate"><?php echo $this->lang->line('starts_from');?>: <?php 
                          echo $this->config->item('site_settings')->currency_symbol." ".$row->cost_starting_from ?></aside>
                          
                        </div>

                  </div>
                  <div class="clearfix"></div>
               </div>
               <?php endforeach; ?>
            </ul>
         </div>
      </div>
   </div>
</div>
<?php } ?>

<?php if (!empty($vehicles)) {?>
<div class="scroll-up">
   <div class="container">
      <div class="section-margin mb-3">
         <div class="row">
            <div class="col-md-12 text-center">
              <h1 class="section-head"> <?php echo $this->lang->line('tour packages');?></h1>
             
            </div>
         </div>
            <div class="row">
            <ul class="bxslider" >
               <?php foreach ($vehicles as $row):?>
               <div class="col-md-3 wi-re">
                  <div class="first-car">
                     <div class="first-car-hed"><?php echo strtoupper($row->name);?></div>

                     <div class="first-car-img"> <img src="<?php echo get_vehicle_image($row->image);?>" width="100%"/> </div>
                        <div class="col-md-8 padding-p-r">
                           <aside class="rate"><?php echo $this->lang->line('starts_from');?>: <?php 
                          echo $this->config->item('site_settings')->currency_symbol." ".$row->cost_starting_from ?></aside>
                          
                        </div>

                  </div>
                  <div class="clearfix"></div>
               </div>
               <?php endforeach; ?>
            </ul>
         </div>
      </div>
   </div>
</div>
<?php } ?>
<!--Vehicles-->







<script src="<?php echo JS_JQUERY_REVEAL;?>"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#button').click(function(e) { // Button which will activate our modal
		   	$('#modal').reveal({ // The item which will be opened with reveal
			  	animation: 'fade',                   // fade, fadeAndPop, none
				animationspeed: 600,                       // how fast animtions are
				closeonbackgroundclick: true,              // if you click background will modal close?
				dismissmodalclass: 'close'    // the class of a button or element that will close an open modal
			});
		return false;
		});
	});
</script>






<style> 
.close{ background:#fff;} 
#modal {
	visibility:hidden;
	width:50%;
	height:auto;
	padding:8px;
	background:rgba(0,0,0,.3);
	-webkit-border-radius:8px;
	-moz-border-radius:8px;
	border-radius:8px;
	position:absolute !important; 
	top:20% !important;
	left:26% !important;
 margin:0 auto;
	z-index:101;
}
.reveal-modal-bg { 
	position: fixed; 
	height: 100%;
	width: 100%;
	background: #000;
	background: rgba(0,0,0,.4);
	z-index: 100;
	display: none;
	top: 0;
	left: 0; 
}
.button.cl {
    float: left;
    position: absolute;
    right: -14px;
    top: -11px; border:0;
}
</style>



<script type="text/javascript"> 
   (function($,W,D)
   {
      var JQUERY4U = {};
   
      JQUERY4U.UTIL =
      {
          setupFormValidation: function()
          {
              //Additional Methods			
   
   
   
   		
   		//form validation rules
              $("#online_booking_form").validate({
                  rules: {
                      pick_up: {
                          required: true
                          
                      },
   				drop_of: {
                          required: true
                          
                      },
			pick_time: {
                          required: true 
                      }
                  },
   			
   			messages: {
   				pick_up: {
                          required: "<?php echo $this->lang->line('pick_location_valid');?>"
                      },
   				drop_of: {
                          required: "<?php echo $this->lang->line('drop_location_valid');?>"
                      },
   	pick_time: {
                          required: "<?php echo $this->lang->line('pick_time_valid');?>"
                      }
   			},
                  
                  submitHandler: function(form) {
                      form.submit();
                  }
              });
          }
      }
   
      //when the dom has loaded setup form validation rules
      $(D).ready(function($) {
          JQUERY4U.UTIL.setupFormValidation();
      });
   
   })(jQuery, window, document);
   
   
   
   $(function(){
        $('.ilike').click(function(){
            var $this = $(this);
            var p1 = $this.data('value');
            changeField(p1);
        });
		$('.location, .airlocation').click(function () {
			$('#no_repeat').val('1');
		 });
    });
   function changeField(ss)
   {
   if(ss=="pick_airport")
   {
   $('#local_pick').hide();
   $('#airport_pick').show();
   $('#airport_pick').attr('disabled',false);
   $('#local_pick').attr('disabled',true);
   $('#pick_airport_link').hide();
   $('#pick_type').val('A');
   $('#pick_local_link').show();
   }
   else if(ss=="drop_airport")
   {
   $('#local_drop').hide();
   $('#airport_drop').show();
   $('#airport_drop').attr('disabled',false);
   $('#local_drop').attr('disabled',true);
   $('#drop_type').val('A');
   $('#drop_airport_link').hide();
   $('#drop_local_link').show();
   
   }
   else if(ss=="pick_local")
   {
   $('#local_pick').show();
   $('#airport_pick').hide();
   $('#airport_pick').attr('disabled',true);
   $('#local_pick').attr('disabled',false);
   $('#pick_type').val('L');
   $('#pick_airport_link').show();
   $('#pick_local_link').hide();
   }
   else if(ss=="drop_local")
   {
   
   $('#local_drop').show();
   $('#airport_drop').hide();
   $('#airport_drop').attr('disabled',true);
   $('#local_drop').attr('disabled',false);
   $('#drop_type').val('L');
   $('#drop_airport_link').show();
   $('#drop_local_link').hide();
   
   
   }
   
   }
</script>