<!--content-->
         <div class="main-container nine-bmc bmc-remove">
            
             <div class="content">

      <div class="main-hed">
         <a href="<?php echo site_url();?>auth"><?php echo $this->lang->line('home');?></a> >>
         <?php if(isset($title)) echo $title;?>
      </div>

      
      <?php echo $this->session->flashdata('message');?>
      
         <div class="module">
            <div class="module-head">
               <h3><?php if(isset($title)) echo $title;?></h3>
               
               <a class="btn btn-primary add-btn" href="<?php echo site_url();?>bookings/add_booking">
               <i class="fa fa-plus"></i></a>
               
            </div>
            
            <div class="module-body">
            
            <div class="table-responsive">
							
			
            <table id="example" class="display responsive nowrap" width="100%" cellspacing="0">
              
                  <thead>
                     <tr>
                        <th>#</th>
                        <th><?php echo $this->lang->line('reference_no');?></th>
                        <th><?php echo $this->lang->line('user_name');?></th>
                        
                        <th><?php echo $this->lang->line('book_date');?></th>
                        
                       
                        <th><?php echo $this->lang->line('price');?></th>
                        
                        
                         <th><?php echo $this->lang->line('status');?></th> 
                        
                          <th><?php echo $this->lang->line('view_pdf');?></th> 
                        
                      
                        
                     </tr>
                  </thead>
                  <tfoot>
                     <tr>
                        <th>#</th>
                       <th><?php echo $this->lang->line('reference_no');?></th>
                        <th><?php echo $this->lang->line('user_name');?></th>
                        
                        <th><?php echo $this->lang->line('book_date');?></th>
                        
                      
                        
                        <th><?php echo $this->lang->line('price');?></th>
                        
                        <th><?php echo $this->lang->line('status');?></th> 
                        
                         <th><?php echo $this->lang->line('view_pdf');?></th> 
                         
                      
                        
                       
                        
                     </tr>
                  </tfoot>
                 
                  <tbody>
                    
                  </tbody>
                 
            </table>
               
               
            </div>
            
             </div>
             
             
             
         </div>

    
      <!--/.module--> 
   </div>
   <!--/.content--> 
</div>