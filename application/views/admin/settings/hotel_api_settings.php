<div class="main-container nine-bmc bmc-remove">

   <div class="content">
      

        <div class="main-hed"> 
         <a href="<?php echo site_url();?>auth"><?php echo $this->lang->line('home');?></a>
         <?php if(isset($title)) echo " >> Master Settings >> ".$title;?>
     	</div>

   		 <?php echo $this->session->flashdata('message'); ?>

      	<div class="col-md-12">



         	<div class="module">
           		 <div class="module-head">
               			<h3> <?php if(isset($title)) echo $title;?></h3>
           		 </div>
            
            
            	<?php 
                  $attributes = array('name' => 'hotel_api_settings_form', 'id' => 'hotel_api_settings_form');
                  echo form_open_multipart(site_url().'settings/hotel_api_settings',$attributes);?>  

            <div class="module-body">
            
               <div class="col-md-6">
               
               
			    	<div class="form-group">                    
                     <label><?php echo $this->lang->line('pagination');?><?php echo required_symbol();?></label>    
                     
                     <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $pagination;	
                    }
                    else if(isset($_POST))
                    {
                        $val = set_value('pagination');
                    }
                    
                    $element = array('name'=>'pagination',
                    'value'=>$val,
                    'class'=>'form-control');
                    echo form_input($element).form_error('pagination');
                    ?>
                    
                	</div>
                </div>

                	 <div class="col-md-6">
               
               
			  		  <div class="form-group">                    
                     <label><?php echo $this->lang->line('commission');?><?php echo required_symbol();?></label>    
                     
                     <?php
                    $val='';
                    if(isset($record) && !empty($record))
                    {
                        $val = $commission;
                    }
                    else if(isset($_POST))
                    {
                        $val = set_value('commission');
                    }
                    
                    $element = array('name'=>'commission',
                    'value'=>$val,
                    'class'=>'form-control');
                    echo form_input($element).form_error('commission');
                    ?>
                    
               		 </div>


               <div class="form-group">
             
               <input type="hidden" value="<?php  if(isset($record->id)) echo $record->id;?>"  name="update_record_id" />
                
             
               <input type="submit" value="Update" name="submit" class="right-p"/>

               </div>
            </div>

            	  <?php echo form_close();?> 

       		 </div>

    	 </div>
	</div>
</div>