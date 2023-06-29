<div class="main-container nine-bmc bmc-remove">

   <div class="content">
      
       <div class="main-hed">
               <a href="<?php echo site_url();?>auth"><?php echo $this->lang->line('home');?></a> >> <a href="<?php echo site_url();?>tourbookings"><?php echo $this->lang->line('tour_bookings');?></a> >> <?php if(isset($title)) echo $title;?>
            </div>

             <?php echo $this->session->flashdata('message');?>       

         <div class="col-md-12">

               
         <div class="module">
           

            <div class="module-head">
               <h3> <?php if(isset($title)) echo $title;?></h3>
            </div>
            <div class="module-body">
            
            <?php if (isset($record) && !empty($record)) {?>

           
               <div class="col-md-6 padding-p-l bmc-space">
                  <div class="panel panel-default">
                  
                     <div class="panel-heading"><?php echo $this->lang->line('personal_details');?></div>
                     
                     <div class="panel-body padding-p-l padding-p-r">
                        <table class="table table-striped">
                        
                           
                           <tr>
                              <td> <strong><?php echo $this->lang->line('user_name');?> : </strong> </td>
                              <td><?php if (isset($record->registered_name)) echo $record->registered_name;?></td>
                              <td> </td>
                              <td></td>
                           </tr>
                           
                           <tr>
                              <td> <strong><?php echo $this->lang->line('phone');?> : </strong></td>
                              <td><?php if (isset($record->phone)) echo $record->phone;?></td>
                              <td></td>
                              <td></td>
                           </tr>
                           
                           
                           <tr>
                              <td> <strong><?php echo $this->lang->line('email');?>: </strong> </td>
                              <td><?php if (isset($record->email)) echo $record->email;?></td>
                              <td></td>
                              <td></td>
                           </tr>
                           
                        </table>
                     </div>
                  </div>
               </div>
               
               
               <div class="col-md-6 padding">
                  <div class="panel panel-default">
                  
                     <div class="panel-heading"> <?php echo $this->lang->line('tourpackage_details');?> </div>
                     
                     <div class="panel-body padding-p-l padding-p-r">
                        <table class="table table-striped">
                        
                        
                           <tr>
                              <td><strong> <?php echo $this->lang->line('package_name');?>: </strong></td>
                              <td> <?php if (isset($record->package_name)) echo $record->package_name;?> </td>
                              <td></td>
                              <td></td>
                           </tr>
                           

                           <tr>

                              <td> <strong> <?php echo $this->lang->line('price');?>   : </strong> </td>
                              <td> <?php if (isset($record->total_price)) echo $this->config->item('site_settings')->currency_symbol.$record->total_price; ?> </td>
                              <td></td><td></td>
                              <!--<td> <strong> <?php echo $this->lang->line('cost_of_journey');?>   : </strong></td>
                              <td><?php if (isset($record->cost_of_journey)) echo $this->config->item('site_settings')->currency_symbol.$record->cost_of_journey; ?></td>-->
                              
                           </tr>

                            <tr>
                          
                              <td> <strong> <?php echo $this->lang->line('book_date');?> :</strong> </td>
                              <td>  <?php if (isset($record->bookdate)) echo get_date($record->bookdate);?> </td>
                               <td></td>
                              <td></td>
                          </tr>
                           
                          
                           
                        </table>
                     </div>
                  </div>
               </div>

               
               <div class="col-md-12 padding">
                  <div class="panel panel-default">
                  
                     <div class="panel-heading"><?php echo $this->lang->line('booking_details');?></div>
                     
                     <div class="panel-body padding-p-l padding-p-r">
                        <table class="table table-striped">
                        
                        
                           <tr>
                              <td><strong><?php echo $this->lang->line('booking_reference_no');?> : </strong></td>
                              <td> <?php if (isset($record->booking_ref)) echo $record->booking_ref;?> </td>
                              
                               <td></td>
                              <td></td>
                           </tr>
                          
                           
                           <tr>
                              <td><strong><?php echo $this->lang->line('payment_type');?>:</strong></td>
                              <td> <?php if (isset($record->payment_type))    
                              echo $record->payment_type;?> </td>
                              <td></td>
                              <td> </td>
                           </tr>
                           
                          <!--  
                           <tr>
                              <td> <strong> <?php echo $this->lang->line('tax_applied');?>: </strong></td>
                              <td><?php if(isset($record->tax_applied)) echo $record->tax_applied;?></td>

                              <?php if ($record->tax_applied=='Yes') {?>
                              <td> <strong> <?php echo $this->lang->line('tax_amount');?>: </strong></td>
                              <td><?php if(isset($record->tax_amount)) echo $this->config->item('site_settings')->currency_symbol.$record->tax_amount;?></td>

                              <?php } else {?>
                              <td></td>
                              <td></td>
                              <?php } ?>

                           </tr> -->
                           
                           
                           <tr>
                              <td> <strong> <?php echo $this->lang->line('coupon_applied');?>: </strong></td>
                              <td><?php if(isset($record->coupon_applied)) echo $record->coupon_applied;?></td>

                              <td></td>
                              <td></td>
                             
                           </tr>
                           
                           
                            <?php if ($record->coupon_applied=='Yes') {?>
                           
                            <tr>

                               <td> <strong> <?php echo $this->lang->line('coupon_code');?>: </strong></td>
                              <td><?php if(isset($record->coupon_code)) echo $record->coupon_code;?></td>

                              <td> <strong> <?php echo $this->lang->line('coupon_discount_amount');?>: </strong></td>
                              <td><?php if(isset($record->coupon_amount)) echo $this->config->item('site_settings')->currency_symbol.$record->coupon_amount;?></td>
                              <td></td>
                              <td></td>
                           </tr>
                           <?php } ?>
                           
                           
                        </table>
                     </div>
                  </div>
               </div>
               
               
       
                  
               
               <?php } ?> 
               
            </div>

        </div>
      </div>
    </div>
</div>