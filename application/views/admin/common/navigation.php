
      <!--navigation-->
         <div class="left-side-bar bmc-remove">

         <div class="wrapper">
   <div class="sidebarr">
      <div id="cssmenu">


         <ul>
         
            <!--Dashboard-->
            <li <?php if(isset($active_class)){ if($active_class=="dashboard") echo 'class="active"'; }?>><a href="<?php echo site_url();?>admin"><span><?php echo $this->lang->line('dashboard');?></span></a></li>
            
            
            <!--Bookings-->
            <li <?php if(isset($active_class) && $active_class=="bookings") { echo 'class="has-sub active"'; } else { echo 'class="has-sub"'; } ?> >
               <a href="#"><span><?php echo $this->lang->line('bookings');?></span></a>
               <ul>
                  <li class="active"><a href="<?php echo site_url();?>bookings/add_booking"><?php echo $this->lang->line('add_booking');?></a></li>
                  <li><a href="<?php echo site_url();?>bookings/today_bookings"><span><?php echo $this->lang->line('today_bookings');?></span></a>
                  </li>
                  <li><a href="<?php echo site_url();?>bookings/search_bookings"><span><?php echo $this->lang->line('search_bookings');?></span></a>
                  </li>
                  <li><a href="<?php echo site_url();?>bookings"><span><?php echo $this->lang->line('all_bookings');?></span></a>
                  </li>
               </ul>
            </li>
            
            
            
            <!--Vehicle Settings-->
            <li <?php if(isset($active_class) && $active_class=="vehicle") { echo 'class="has-sub active"'; } else { echo 'class="has-sub"'; } ?>>
               <a href="#"><span><?php echo $this->lang->line('vehicle_settings');?></span></a>
               <ul>
                  <li><a href="<?php echo site_url();?>vehicles"><span><?php echo $this->lang->line('vehicles_list');?></span></a>
                  </li>
                  
                  <?php /*?><li><a href="<?php echo site_url();?>vehicle_categories"><span><?php echo $this->lang->line('vehicle_categories');?></span></a></li><?php */?>
                  <li><a href="<?php echo site_url();?>vehicle_features"><span><?php echo $this->lang->line('vehicle_features');?></span></a></li>
               </ul>
            </li>

             <!--TourPakages-->
             
            <li <?php if(isset($active_class) && $active_class=="tour") { echo 'class="has-sub active"'; } else { echo 'class="has-sub"'; } ?> >
               <a href="#"><span><?php echo $this->lang->line('tourpackages');?></span></a>
               <ul>

                  <li class="active"><a href="<?php echo site_url();?>tour/add_packages"><?php echo $this->lang->line('add_packages');?></a></li>
               
                  <li><a href="<?php echo site_url();?>tour"><span><?php echo $this->lang->line('all_packages');?></span></a>
                  </li>
               </ul>
            </li>
            
             
            <!--Tour-Bookings-->
            <li <?php if(isset($active_class) && $active_class=="bookings") { echo 'class="has-sub active"'; } else { echo 'class="has-sub"'; } ?> >
               <a href="#"><span><?php echo $this->lang->line('tour_bookings');?></span></a>
               <ul>
                  <li class="active"><a href="<?php echo site_url();?>tourbookings/add_tour_booking"><?php echo $this->lang->line('add_tour_booking');?></a></li>
                  
                  <li><a href="<?php echo site_url();?>tourbookings"><span><?php echo $this->lang->line('all_tour_bookings');?></span></a>
                  </li>
               </ul>
            </li>
            
            
            
            
            <!--Airports-->
            <!---
            <li <?php if(isset($active_class)){ if($active_class=="airports") echo 'class="active"'; }?>><a href="<?php echo site_url();?>locations"><span><?php echo $this->lang->line('locations');?></span></a></li>--->
            
            
            
            <!--Users-->
            <li <?php if(isset($active_class) && $active_class=="users") { echo 'class="has-sub active"'; } else { echo 'class="has-sub"'; } ?>>
               <a href="#"><span><?php echo $this->lang->line('users');?></span></a>
               <ul>
                  <li><a href="<?php echo site_url();?>customers"><span><?php echo $this->lang->line('list_customers');?></span></a>
                  </li>
                  <!---
                  <li><a href="<?php echo site_url(); ?>executives"><span><?php echo $this->lang->line('list_executives');?></span></a>
                  </li>--->
                 
               <!--   <li><a href="<?php echo site_url(); ?>drivers"><span><?php echo $this->lang->line('list_drivers');?></span></a>
                  </li> -->
                  
                  
               </ul>
            </li>
            
            
            
            <!--Master Settings-->
            <li <?php if(isset($active_class) && $active_class=="masterSettings") { echo 'class="has-sub active"'; } else { echo 'class="has-sub"'; } ?>>
               <a href="#"><span><?php echo $this->lang->line('master_settings');?></span></a>      
               <ul>
                  <li><a href="<?php echo site_url();?>settings/site_settings"><span><?php echo $this->lang->line('site_settings');?></span></a></li>
                  
                  <li><a href="<?php echo site_url();?>settings/testimonials"><span><?php echo $this->lang->line('reviews_settings');?></span></a></li>
                  
                  <li><a href="<?php echo site_url();?>settings/email_settings"><span><?php echo $this->lang->line('email_settings');?></span></a></li>
                  
                  
                   <li><a href="<?php echo site_url();?>settings/email_templates"><span><?php echo $this->lang->line('email_templates');?></span></a></li>
                  
                  
                  <?php /*?><li><a href="<?php echo site_url();?>settings/paypal_settings"><span><?php echo $this->lang->line('paypal_settings');?></span></a></li><?php */?>
                  
                  <li><a href="<?php echo site_url();?>settings/payu_settings"><span><?php echo $this->lang->line('payu_settings');?></span></a></li>
                  
                  <li><a href="<?php echo site_url();?>settings/packages"><span><?php echo $this->lang->line('hourly_package_settings');?></span></a></li>
                  
                  <li><a href="<?php echo site_url();?>settings/waitings"><span><?php echo $this->lang->line('waiting_time_settings');?></span></a></li>
                  
                  <li><a href="<?php echo site_url();?>settings/reasonsToBook"><span><?php echo $this->lang->line('reasons_to_book_with_us');?></span></a></li>
                  
                 
                  
               </ul>
            </li>
            
            
             <!--Coupons-->
            <li <?php if(isset($active_class)){ if($active_class=="coupons") echo 'class="active"'; }?>><a href="<?php echo site_url();?>coupons/index"><span><?php echo $this->lang->line('coupons');?></span></a></li>
            
            <!--invoice-->
           <li <?php if(isset($active_class) && $active_class=="invoice") { echo 'class="active"'; } else { echo 'class="has-sub"'; } ?> >
               <a href="#"><span><?php echo $this->lang->line('invoice');?></span></a>
            <ul>
            <li <?php if(isset($active_class)){ if($active_class=="invoice") echo 'class="active"'; }?>><a href="<?php echo site_url();?>invoice"><span><?php echo 'Car Invoice';?></span></a></li>

             <li <?php if(isset($active_class)){ if($active_class=="invoice") echo 'class="active"'; }?>><a href="<?php echo site_url();?>tourinvoice"><span><?php echo 'Tour Package Invoice';?></span></a></li>
          </ul>
       </li>
            

            
            <!--FAQS-->
            <li <?php if(isset($active_class)){ if($active_class=="faq") echo 'class="active"'; }?>><a href="<?php echo site_url();?>faqs"><span><?php echo $this->lang->line('faqs');?></span></a></li>

            
            
            
            <!--Reports-->
            <li <?php if(isset($active_class) && $active_class=="report") { echo 'class="has-sub active"'; } else { echo 'class="has-sub"'; } ?>>
               <a href="#"><span><?php echo $this->lang->line('reports');?></span></a>
               <ul>
                  <li><a href="<?php echo site_url();?>reports/overallVehicles"><span><?php echo $this->lang->line('overall_vehicles');?></span></a>
                  </li>
                  <li><a href="<?php echo site_url();?>reports/payments"><span><?php echo $this->lang->line('payments');?></span></a>
                  </li>
               </ul>
            </li>
            
            
         </ul>
       </div>
   </div>
 </div>

  </div>
         <!--navigation-->
   