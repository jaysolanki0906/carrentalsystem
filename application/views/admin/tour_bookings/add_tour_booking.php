<div class="main-container nine-bmc bmc-remove">
          
           <div class="content">

    <div class="main-hed">
         <a href="<?php echo site_url();?>auth"><?php echo $this->lang->line('home');?></a> >> <a href="<?php echo site_url();?>tour_bookings"><?php echo $this->lang->line('tour_bookings');?></a> >>
         <?php if(isset($title)) echo $title;?>
      </div>




         <div class="module">
            <div class="module-head">
               <h3><?php if(isset($title)) echo $title;?></h3>
            </div>
            
            <div class="module-body">

             



            <?php 
               $attributes = array('name' => 'booking_settings_form', 'id' => 'booking_settings_form');
               echo form_open(site_url()."tourbookings/add_tour_booking",$attributes);?>
               
              
               <div class="col-md-6">

                    <div class="form-group">
                      <label class="title"> package name: </label> 
                    	<?php $records=$this->dvbs_model->get_package_name();
    					echo form_dropdown('package_name',$records,'', 'class="chzn-select"');
                    	?> 
              		</div> 
               
               <!--   <div class="form-group">                    
                     <label><?php echo $this->lang->line('source');?><?php echo required_symbol();?></label>    
                     <input class="location" type="text" name="local_pick" id="local_pick" value="<?php echo set_value('local_pick');?>" placeholder="<?php echo $this->config->item('site_settings')->pick_point_placeholder;?>" class="form-control"/>
                    <?php echo form_error('local_pick');?>

                  </div>
                  
                  
                  
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('destination');?><?php echo required_symbol();?></label>    
                     <input class="location" type="text" name="local_drop" id="local_drop" alt="admin_booking" value="<?php echo set_value('local_drop');?>" placeholder="<?php  echo $this->config->item('site_settings')->drop_point_placeholder;?>" class="form-control"/> 
                    <?php echo form_error('local_drop');?>               
                  </div>
                  
                  
                  
                  <div class="form-group">
                     <div id="cars_data_list" class="scrooll" style="display:none;"> 
                     </div>
                  </div>
                  
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('arrival_date');?><?php echo required_symbol();?></label>    
                     <input data-beatpicker="true" class="dte" type="text" value="<?php echo date($date_format,time()+86400);?>" name="pick_date" data-beatpicker-disable="{from:[<?php echo date('Y,n,j'); ?>],to:'<'}"  data-beatpicker-format="['<?php echo $date_elem1;?>','<?php echo $date_elem2;?>','<?php echo $date_elem3;?>'],separator:'<?php echo $seperator;?>'" />
                     <?php echo form_error('pick_date');?>
                     
                  </div>
                  
                  
                  
                  
                  <div class="form-group">
                     <label> <?php echo $this->lang->line('arrival_time');?><?php echo required_symbol();?></label>
                     <input type="text"  id="timepicker1" value="<?php echo date('h : i : A');echo set_value('time_picker');?>" name="time_picker" />
                      <?php echo form_error('time_picker');?>
                  </div>-->

                    
                  <input type="hidden" name="payment_mode" value="cash">
                  <div class="form-group">
                     <label><?php echo $this->lang->line('status');?></label>
                     <?php 
                        $payment_opts = array(	
                        					"pending" => "Pending"
                        					
                        				  );
                        
                        
                        echo form_dropdown('status',$payment_opts,'','class = "chzn-select"');?>
                  </div>
                  
                  
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('name');?><?php echo required_symbol();?></label>    
                     <input type="text" name="customer_name" placeholder="<?php echo $this->lang->line('customer_name');?>" value="<?php echo set_value('customer_name');?>" class="form-control"/>    
                  </div>
                  <?php echo form_error('customer_name');?>

				  </div>
               <div class="col-md-6">
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('phone');?><?php echo required_symbol();?></label>    
                     <input type="text" name="customer_phone" maxlength="30" placeholder="<?php echo $this->lang->line('customer_phone');?>" value="<?php echo set_value('customer_phone');?>" class="form-control"/>    
                  </div>
                  <?php echo form_error('customer_phone');?>

                  
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('email');?><?php echo required_symbol();?></label>    
                     <input type="text" name="customer_email" placeholder="<?php echo $this->lang->line('customer_email');?>" value="<?php echo set_value('customer_email');?>" class="form-control" />    
                  </div>
                  <?php echo form_error('customer_email');?>
                  
                 
                  
                  <input type="hidden" name="car_cost" id="car_cost" value="0.00"/>
                  <input type="hidden" name="booking_ref" value="<?php echo date('ymdHis'); ?>"/>
                  
                  
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('price')." (".$this->config->item('site_settings')->currency_symbol.")";?><?php echo required_symbol();?></label>    
                     <input type="text" name="total_cost" id="total_cost"  placeholder="<?php echo $this->lang->line('cost');?>" value="<?php echo set_value('total_cost');?>" class="form-control"/>    
                  </div>
                  <?php echo form_error('total_cost');?>	
                  
                  
                  <div id="dummy">
                  </div>
                  
                  
                  <div class="form-group">         
                     <input type="submit" value="Book" name="add_booking"/>
                  </div>
                  
				   <input type="hidden" name="no_repeat" id="no_repeat" value="1"/>
                   
               </div>


                <?php echo form_close();?> 

            


          
      </div>
    </div>
</div>
</div>

<!--	Validations	-->
<script type="text/javascript"> 

$(document).ready(function() {

	$('.location').click(function () {
			$('#no_repeat').val('1');
		 });

});


   (function($, W, D) {
    var JQUERY4U = {};
    JQUERY4U.UTIL = {
        setupFormValidation: function() {
            //Additional Methods			
            $.validator.addMethod("phoneNumber", function(uid, element) {
                return (this.optional(element) || uid.match(/^[- +()]*[0-9][- +()0-9]*$/));
            }, "<?php echo $this->lang->line('valid_phone_number');?>");
             $.validator.addMethod("mobileNumber", function(uid, element) {
                return (this.optional(element) || uid.match(/^[- +()]*[0-9][- +()0-9]*$/));
            }, "<?php echo $this->lang->line('valid_phone_number');?>");
            $.validator.addMethod("lettersonly", function(a, b) {
                return this.optional(b) || /^[a-z ]+$/i.test(a)
            }, "<?php echo $this->lang->line('valid_name');?>");
            $.validator.addMethod("numbersonly", function(a, b) {
                return this.optional(b) || /^[0-9 ]+$/i.test(a)
            }, "<?php echo $this->lang->line('valid_number');?>");
            //form validation rules
            $("#booking_settings_form").validate({
                rules: {
                   package_name: {
                        required: true
                    },
                   
                    customer_name: {
                        required: true,
                        lettersonly: true
                    },
                    customer_phone: {
                        required: true,
                        phoneNumber: true,
                        rangelength: [9, 30]
                    },
                    customer_mno: {
                        required: true,
                        mobileNumber: true,
                        rangelength: [9, 30]
                    },
                    customer_email: {
                        required: true,
                        email: true
                    },
                    total_cost: {
                        required: true
                    }
                },
                messages: {
                    package_name: {
                        required: "<?php echo $this->lang->line('package_name_valid');?>"
                    },
                    
                    customer_name: {
                        required: "<?php echo $this->lang->line('name_valid');?>"
                    },
                    customer_phone: {
                        required: "<?php echo $this->lang->line('phone_valid');?>"
                    },
                     customer_mno: {
                        required: "<?php echo $this->lang->line('phone_valid');?>"
                    },
                    customer_email: {
                        required: "<?php echo $this->lang->line('email_valid');?>"
                    },
                    total_cost: {
                        required: "<?php echo $this->lang->line('cost_valid');?>"
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
</script>