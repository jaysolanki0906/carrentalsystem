<div class="main-container nine-bmc bmc-remove">
          
           <div class="content">


    
<script src="<?php echo JS_TIMEPICKER;?>"></script>




    <div class="main-hed">
         <a href="<?php echo site_url();?>auth"><?php echo $this->lang->line('home');?></a> >> <a href="<?php echo site_url();?>Tour"><?php echo $this->lang->line('tourpackages');?></a> >>
         <?php if(isset($title)) echo $title;?>
      </div>




         <div class="module">
            <div class="module-head">
               <h3><?php if(isset($title)) echo $title;?></h3>
            </div>
            
            <div class="module-body">

             



            <?php 
               $attributes = array('name' => 'add_package_form', 'id' => 'add_package_form');
               echo form_open_multipart(site_url()."tour/add_packages",$attributes);?>

               <div class="col-md-6">
               
               
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('package_name');?><?php echo required_symbol();?></label>    
                 <!--   <input  type="text" name="packagename" id="p_name" value="<?php echo set_value('packagename');?>" placeholder="<?php echo $this->lang->line('package_name');?>" class="form-control"/>--->
                   <!-- <?php echo form_error('packagename');?>--->


                     <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $record->package_name;
                    }
                    else if(isset($_POST))
                    {
                        $val = set_value('package_name');
                    }
                
                    $element = array('name'=>'packagename',
                    'value'=>$val,
                    'class'=>'form-control',
                    'placeholder' => 'Please Enter package name');
                    echo form_input($element).form_error('packagename');
                    ?>

                  </div>




               
               
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('source');?><?php echo required_symbol();?></label>    
                  <!---   <input class="location" type="text" name="local_pick" id="local_pick" value="<?php echo set_value('local_pick');?>" placeholder="<?php echo $this->config->item('site_settings')->pick_point_placeholder;?>" class="form-control"/>
                    <?php echo form_error('local_pick');?>--->


                     <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $record->source;
                    }
                    else if(isset($_POST))
                    {
                        $val = set_value('source');
                    }
                
                    $element = array('name'=>'local_pick',
                    'value'=>$val,
                    'class'=>'location');
                    echo form_input($element).form_error('local_pick');
                    ?>

                  </div>
                 

                  
                  
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('destination');?><?php echo required_symbol();?></label>    
                  <!---   <input class="locantio" type="text" name="local_drop" id="local_drop" value="<?php echo set_value('local_drop');?>" placeholder="<?php  echo $this->config->item('site_settings')->drop_point_placeholder;?>" class="form-control"/> 
                    <?php echo form_error('local_drop');?>  ---->  

                     <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $record->destination;
                    }
                    else if(isset($_POST))
                    {
                        $val = set_value('destination');
                    }
                
                    $element = array('name'=>'local_drop',
                    'value'=>$val,
                    'class'=>'location');
                    echo form_input($element).form_error('local_drop');
                    ?>           
                  </div>
                  
                      

                  
                  
                  
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('description');?><?php echo required_symbol();?></label>    
<textarea class="ckeditor" id="editor1" name="description" cols="100" rows="10"><?php if(isset($record->description))
                     echo $record->description;echo set_value('description'); ?></textarea>
                     </div>
                     



                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('arrival_date');?><?php echo required_symbol();?></label>    
                <!--     <input data-beatpicker="true" class="dte" type="text" value="<?php echo date($date_format,time()+86400);?>" name="arrival_date" data-beatpicker-disable="{from:[<?php echo date('Y,n,j'); ?>],to:'<'}"  data-beatpicker-format="['<?php echo $date_elem1;?>','<?php echo $date_elem2;?>','<?php echo $date_elem3;?>'],separator:'<?php echo $seperator;?>'" />
                     <?php echo form_error('arrival_date');?>--->
                     
                      <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $record->arrival_date;
                    }
                    else if(isset($_POST))
                    {
                        $val = set_value('arrival_date');
                    }
                
                    $element = array('name'=>'arrival_date',
                    'value'=>$val,
                    'class'=>'form-control',
                    'data-beatpicker'=>true);
                    echo form_input($element).form_error('arrival_date');
                    ?>           

                  </div>
                  
                  
                  
                  
                  <div class="form-group">
                     <label> <?php echo $this->lang->line('arrival_time');?><?php echo required_symbol();?></label>
                <!--    <input type="text"  id="timepicker1" value="<?php echo date('h : i : A');echo set_value('arrival_time');?>" name="arrival_time" />
                      <?php echo form_error('arrival_time');?> -->


                      <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $record->arrival_time;
                    }
                   else if(isset($_POST))
                    {
                     
                        $val = date("h : i : A");
                    }
                
                    $element = array('name'=>'arrival_time',
                    'value'=>$val,
                    'id'=>'timepicker1',
                   
                    'class'=>'form-control',
                       'timepicker1'=>'true');
                  
                    echo form_input($element).form_error('arrival_time');
                    ?>      

                  </div>


                  
                 
               </div>

               <div class="col-md-6">

                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('dept_date');?><?php echo required_symbol();?></label>    
                <!---     <input data-beatpicker="true" class="dte" type="text" value="<?php echo date($date_format,time()+86400);?>" name="dept_date" data-beatpicker-disable="{from:[<?php echo date('Y,n,j'); ?>],to:'<'}"  data-beatpicker-format="['<?php echo $date_elem1;?>','<?php echo $date_elem2;?>','<?php echo $date_elem3;?>'],separator:'<?php echo $seperator;?>'" />
                     <?php echo form_error('dept_date');?>---->

                      <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $record->dept_date;
                    }
                    else if(isset($_POST))
                    {
                        $val = set_value('dept_date');
                    }
                
                    $element = array('name'=>'dept_date',
                    'value'=>$val,
                    'class'=>'form-control',
                    'data-beatpicker'=>true);
                    echo form_input($element).form_error('dept_date');
                    ?>           
                     
                  </div>

                    <div class="form-group">
                     <label> <?php echo $this->lang->line('dept_time');?><?php echo required_symbol();?></label>
                   <!-- <input type="text"  id="timepicker2" value="<?php echo date('h : i : A');echo set_value('dept_time');?>" name="dept_time" />
                      <?php echo form_error('dept_time');?>-->


                      <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $record->arrival_time;
                    }
                    else if(isset($_POST))
                    {
                        $val = set_value('dept_time');
                    }
                
                    $element = array('name'=>'dept_time',
                    'value'=>$val,
                    'class'=>'form-control',
                    'id'=>'timepicker2',
                       'timepicker2'=>'true');
                  //   'clockpicker'=>'true'
                    echo form_input($element).form_error('dept_time');
                    ?>      

                  </div>



                <div class="form-group">
                     <label>
             <?php echo $this->lang->line('image'); ?>
                     </label>

           <input name="userfile" id="image" type="file" title="<?php echo $this->lang->line('t_package')." ".$this->lang->line('image');?>" onchange="readURL(this)" style="width:80px;">
          <br/>
          
          <?php 
		
            $src = "";
            $style="display:none;";

            if(isset($record->image) && $record->image != "") {

              $src = base_url()."uploads/package_images/".$record->image;
              $style="";

            }
          ?>
         <img class="img-responsive vehicle-img" id="vehicle_image" src="<?php echo $src;?>" style="<?php echo $style;?>" />

                   </div>


                   

                  <input type="hidden" name="status" value="status">
                  <div class="form-group">
                     <label><?php echo $this->lang->line('status');?></label>
                     <?php 
                        $payment_opts = array(  
                                  "active" => "Active",
                                  "inactive" => "Inactive"
                                  );
                        
                        
                        echo form_dropdown('status',$payment_opts,'','class = "chzn-select"');?>
                  </div>
                  
                
                  
                  <?php if(isset($record) && !empty($record))
                    {
                        $price = $record->price;
                    }
                    else if(isset($_POST))
                    {
                        $price = set_value('price');
                    } ?>
                  
                  
                  <div class="form-group">                    
                     <label><?php echo $this->lang->line('price')." (".$this->config->item('site_settings')->currency_symbol.")";?><?php echo required_symbol();?></label>    
                     <input type="text" name="price" id="price"placeholder="<?php echo $this->lang->line('price');?>" value="<?php echo $price;?>" class="form-control"/>    
                  </div>
                  <?php echo form_error('price');?>  
                  
                  
          <!--        <div id="dummy">
                  </div> -->
                  
                  
                 <!-- <div class="form-group">         
                     <input type="submit" value="Book" name="add_package"/>
                  </div>
                  
           <input type="hidden" name="no_repeat" id="no_repeat" value="1"/>--->
                   


               <div class="form-group"> 
               
               <?php 
                $value='';
                if(isset($record))
                {
                    $value = $record->id;
                }
                echo form_hidden('id',$value);?>
                        
               
               <button type="submit" name="add_package" value="add_package" class="btn btn-primary"><?php echo $this->lang->line('save');?></button>
               
               </div>

               </div>


                <?php echo form_close();?> 

            
          
      </div>
    </div>
</div>
<?php if(isset($record) && !empty($record))
                    { ?>
            
            <p><?php echo $this->session->flashdata('statusMsg'); ?></p>
			
            <!-- file upload form -->
            <form method="post" action="<?php echo site_url() ; ?>tour/uploadfiles" enctype="multipart/form-data">
            <?php 
                $value='';
                if(isset($record))
                { ?>
                    <input type="hidden" name="id" value="<?php echo $record->id; ?>">
                <?php } ?>
                
                <div class="form-group">
                    <label>Choose Files</label>
                    <input type="file" name="files[]" multiple/>
                </div>
                <div class="form-group">
                    <input type="submit" name="fileSubmit" value="UPLOAD"/>
                </div>
            </form>
            <div class="row">
                <ul class="gallery">
                  <form method="post" action="<?php echo site_url() ; ?>tour/delete_images">
                    <?php 
					
					
					if(!empty($files)){ foreach($files as $file){ 
					
					?>
                    <li>
                        <img src="<?php echo base_url('uploads/files/'.$file['file_name']); ?>" height="100" width="100" style="width: 15%;">
                        <p>Uploaded On <?php echo date("j M Y",strtotime($file['uploaded_on'])); ?></p>
                        <input type="checkbox" name="imgs[]" value="<?php echo $file['id']; ?>">
                    </li>
                    <?php } ?>
					<div class="form-group">
                    <input type="submit" name="delete" value="DELETE"/>
                </div>
				<?php	}else{ ?>
                    <p>Image(s) not found.....</p>
                    <?php } ?>
                    </form>
                </ul>
            </div>
			<?php } ?>
</div>

<!--  Validations -->
<script type="text/javascript"> 

$(document).ready(function() {

  $('.location').click(function () {
      $('#no_repeat').val('1');
     });

});


function readURL(input) {
  
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {

                input.style.width = '100%';
        $('#vehicle_image')
                    .attr('src', e.target.result);
        $('#vehicle_image').fadeIn();
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
  
 
   (function($, W, D) {
    var JQUERY4U = {};
    JQUERY4U.UTIL = {
        setupFormValidation: function() {
            //Additional Methods      

          $.validator.addMethod("numbersonly", function(uid, element) {
     return (this.optional(element) || uid.match(/^\d{0,9}(\.\d{0,2})?$/));
       },"Please enter valid value.");
            //  $.validator.addMethod("numbersonly", function(a, b) {
            //     return this.optional(b) || /^[0-9 ]+$/i.test(a)
            // }, "<?php echo $this->lang->line('valid_price');?>");
              <?php /*?>$.validator.addMethod("lettersonly", function(a, b) {
                return this.optional(b) || /^[a-z ]+$/i.test(a)
            }, "<?php echo $this->lang->line('valid_name');?>");<?php */?>
           /* $.validator.addMethod("phoneNumber", function(uid, element) {
                return (this.optional(element) || uid.match(/^[- +()]*[0-9][- +()0-9]*$/));
            }, "<?php echo $this->lang->line('valid_phone_number');?>");
             $.validator.addMethod("mobileNumber", function(uid, element) {
                return (this.optional(element) || uid.match(/^[- +()]*[0-9][- +()0-9]*$/));
            }, "<?php echo $this->lang->line('valid_phone_number');?>");
           */
           
            //form validation rules
            $("#add_package_form").validate({
                rules: {
                   packagename:{
                       required: true
                     },
                   arrival_date: {
                        required: true
                    },
                    arrival_time: {
                        required: true
                    },
                    dept_date: {
                        required: true
                    },
                    dept_time: {
                        required: true
                    },
                    local_pick: {
                        required: true
                    },
                    local_drop: {
                        required: true
                    },
                  
                   price: {
                        required: true,
                        numbersonly:true,
                         rangelength: [3, 10]
                    }
                },
                messages: {
                   packagename: {
                        required: "<?php echo $this->lang->line('package_name_valid');?>"      
                    },
                    arrival_date: {
                        required: "<?php echo $this->lang->line('arrival_date_valid');?>"
                    },
                    arrival_time: {
                        required: "<?php echo $this->lang->line('arrival_time__valid');?>"
                    },
                    dept_date: {
                        required: "<?php echo $this->lang->line('departure_date_valid');?>"
                    },
                    dept_time: {
                        required: "<?php echo $this->lang->line('departure_time_valid');?>"
                    },
                    local_pick: {
                        required: "<?php echo $this->lang->line('source_valid');?>"
                    },
                    local_drop: {
                        required: "<?php echo $this->lang->line('destination_valid');?>"
                    },
                   
                    price: {
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