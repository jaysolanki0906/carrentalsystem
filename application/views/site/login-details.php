</header>
<div class="container">
   <div class="section-margin">
      <div class="row">
         <div class="col-md-9">
            <div class="left-side-cont">
               <div class="col-md-12 padding-p-0">
                  <div class="bcp">
                     <div class="business-us journey-details">
                        <div class="busi-cercle active"> 
                        </div>
                        <center> <?php echo $this->lang->line('journey_details');?></center>
                     </div>
                     <div class="business-us passenger-details">
                        <div class="busi-cercle "> 
                        </div>
                        <center><?php echo $this->lang->line('passenger_details');?></center>
                     </div>
                     <div class="business-us payment-details">
                        <div class="busi-cercle"> 
                        </div>
                        <center><?php echo $this->lang->line('payment_details');?></center>
                     </div>
                  </div>
                  <div class="online">
                     <div class="col-md-4">
                        <div class="btn btn-default re-gu"> <a href="<?php echo site_url();?>auth/login"><i class="fa fa-sign-in"></i>  <?php echo $this->lang->line('login');?></a> </div>
                     </div>
                     <div class="col-md-4">
                        <div class="btn btn-default re-gu"><a href="<?php echo site_url();?>auth/create_user"> <i class="fa fa-list-ul"></i> <?php echo $this->lang->line('register');?> </a></div>
                     </div>
                     <div class="col-md-4">
                        <div class="btn btn-default re-gu">
                           <a href="<?php echo site_url();?>welcome/passengerDetails"> <i class="fa fa-check-square"></i> <?php echo $this->lang->line('guest_check_out');?></a>
                        </div>
                     </div>
                     <?php echo form_close(); ?>  
                  </div>
               </div>
            </div>
         </div>
         
         
         
         
          <?php
		if(!isset($package_id)){
			   ?>
         <!---SUMMARY CONTENT-->
         <div id="passenger_summary_content">
         </div>
         <?php } ?>
          <?php
		if(isset($package_id)){
			   ?>
         <!---SUMMARY CONTENT-->
         <div id="package_passenger_summary_content">
         </div>
         <?php } ?>
         
         
         
      </div>
   </div>
</div>

<script type="text/javascript"> 
   (function($,W,D)
   {
      var JQUERY4U = {};
   
      JQUERY4U.UTIL =
      {
          setupFormValidation: function()
          {
              //Additional Methods			
   
   $.validator.addMethod("lettersonly",function(a,b){return this.optional(b)||/^[a-z ]+$/i.test(a)},"<?php echo $this->lang->line('valid_name');?>");
   
   $.validator.addMethod("phoneNumber", function(uid, element) {
   			return (this.optional(element) || uid.match(/^[- +()]*[0-9][- +()0-9]*$/));
   		},"<?php echo $this->lang->line('valid_phone_number');?>");
   
   		
   		//form validation rules
              $("#passenger_details_form").validate({
                  rules: {
                      username: {
                          required: true,
   			  lettersonly: true
                          
                      },
   				phone: {
                          required: true,
   			  phoneNumber:true,
   			  rangelength: [9,30]
                          
                      },
                      		email: {
                      	  required: true,
                      	  email: true	
                      }
                  },
   			
   			messages: {
   				username: {
                          required: "<?php echo $this->lang->line('name_valid');?>"
                      },
   				phone: {
                          required: "<?php echo $this->lang->line('phone_valid');?>"
                      },
                      		email: {
                      	  required: "<?php echo $this->lang->line('email_valid');?>"	
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
   
   
$( document ).ready(function() {
    
   summary_content();
   package_summary_content();
    
});

function summary_content() {
    
    $("#passenger_summary_content").html('<img src="<?php echo IMGS_SYSTEM_DSN;?>bx_loader.gif" alt="Loader" align="middle">');
    
    $.ajax({			 
			 type: 'POST',			  
			 async: false,
			 cache: false,	
			 url: "<?php echo site_url();?>welcome/passenger_summary_content",
			 data: '<?php echo $this->security->get_csrf_token_name();?>=<?php echo $this->security->get_csrf_hash();?>',
			 success: function(data) 
			 {
				$("#passenger_summary_content").html(data);
			 }		  		
    });
}  
function package_summary_content() {
    
    $("#package_passenger_summary_content").html('<img src="<?php echo IMGS_SYSTEM_DSN;?>bx_loader.gif" alt="Loader" align="middle">');
    
    $.ajax({			 
			 type: 'POST',			  
			 async: false,
			 cache: false,	
			 url: "<?php echo site_url();?>welcome/package_passenger_summary_content",
			 data: '<?php echo $this->security->get_csrf_token_name();?>=<?php echo $this->security->get_csrf_hash();?>',
			 success: function(data) 
			 {
				$("#package_passenger_summary_content").html(data);
			 }		  		
    });
} 
</script>