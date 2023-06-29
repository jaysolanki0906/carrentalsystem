
<div class="main-container nine-bmc bmc-remove">
          
   <div class="content">

      <div class="main-hed">
         <a href="<?php echo site_url();?>auth"><?php echo $this->lang->line('home');?></a> >> <a href="<?php echo site_url();?>Tour"><?php echo $this->lang->line('tourpackages');?></a> >>
         <?php if(isset($title)) echo $title;?>
      </div>


      <?php echo $this->session->flashdata('message');?>
      
         <div class="module">
            <div class="module-head">
               <h3><?php if(isset($title)) echo $title;?></h3>
                             
            </div>

             <div class="module-body">
            
            <div class="table-responsive">
              
      
            <table id="example" class="" width="100%" cellspacing="0">
              
                  <thead>
                     <tr>
                        
                       <th>#</th>
                        <th><?php echo $this->lang->line('package_name');?></th>
                        
                        <th><?php echo $this->lang->line('source');?></th>
                        
                        <th><?php echo $this->lang->line('destination');?></th>
                        
                      <!-- <th><?php echo $this->lang->line('description');?></th>-->
                        
                        <th><?php echo $this->lang->line('arrival_date');?></th>
                        
                        <th><?php echo $this->lang->line('arrival_time');?></th>
                        
                        <th><?php echo $this->lang->line('dept_date');?></th>

                         <th><?php echo $this->lang->line('dept_time');?></th>
                         <th><?php echo $this->lang->line('price');?></th>

                          <th><?php echo $this->lang->line('image');?></th>
                        
                    
                        
                        <th><?php echo $this->lang->line('action');?></th>
                        
                                           
                     </tr>
                  </thead>
                  <tfoot>
                     <tr>
                      
                      <th>#</th>
                        <th><?php echo $this->lang->line('package_name');?></th>
                        
                        <th><?php echo $this->lang->line('source');?></th>
                        
                        <th><?php echo $this->lang->line('destination');?></th>
                        
                      <!--  <th><?php echo $this->lang->line('description');?></th>-->
                        
                        <th><?php echo $this->lang->line('arrival_date');?></th>
                        
                        <th><?php echo $this->lang->line('arrival_time');?></th>
                        
                        <th><?php echo $this->lang->line('dept_date');?></th>

                         <th><?php echo $this->lang->line('dept_time');?></th>
                         <th><?php echo $this->lang->line('price');?></th>

                        
                        <th><?php echo $this->lang->line('image');?></th>
                        
                        <th><?php echo $this->lang->line('action');?></th>
                        
                        
                        
                       
                        
                     </tr>
                  </tfoot>
                 
                  <tbody>
                    
                  </tbody>
                 
            </table>
               
               
            </div>
            
             </div>
             
             
          </div>


  </div>
</div>