<style>
   #myList { margin:0; padding:0; }
   #myList li{ display: none;
   float: left;
   list-style: outside none none;
   margin: 0px 6px;
   padding: 0;
 width: 48.5%;
   }
   #loadMore {
   background: none repeat scroll 0 0 #121e31;
   color: #fff;
   cursor: pointer;
   float: left;
   margin: 40px 16px;
   padding: 6px 11px;
   }
   #loadMore:hover {
   color:#ffda31
   }
   #showLess {
   background: none repeat scroll 0 0 #121e31;
   color: #fff;
   cursor: pointer;
   float: left;
   margin:20px 16px;
   padding: 6px 11px;
   }
   #showLess:hover {
   color:#ffda31
   } 
</style>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel"> <?php echo $this->lang->line('terms_conditions');?> </h4>
         </div>
         <div class="modal-body" id="tnc">	   
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $this->lang->line('close');?> </button>
         </div>
      </div>
   </div>
</div>
<div class="container padding-p-0 banner">
   <div class="row">
      <div class="col-md-8 padding-p-l">
         <aside class="hedding"> <?php echo "Tour Packages"; ?>  </aside>
      </div>
      <div class="col-md-4 padding-p-r">
         <aside class="bradecom">
            <ul>
               <li> <a href="<?php echo SITEURL;?>"> <?php echo $this->lang->line('home');?> </a> </li>
               <li>>></li>
               <li class="active"> <a href="#"> <?php if(isset($sub_heading)) echo $sub_heading;?> </a> </li>
            </ul>
         </aside>
      </div>
   </div>
</div>
</header>
<div class="g-bg">
<div class="container">
   <div class="section-margin">

      <div class="row">


<?php if (!empty($records)) { 
 $sno = 1; 
 $i=0;
                        foreach ($records as $r) {
						$i++;
   ?>
         <div class="col-md-4" <?php if($i > 3){ echo "style='clear:both'"; $i=1;} ?>>
             <div class="first-car white padding cs-card-card">
                              <div class="first-car-hed"><?php echo strtoupper($r->package_name);?></div>

                        <div class="first-car-img"> <img width="100%" src="<?php echo get_package_image($r->image);?>"title="<?php echo $r->package_name;?>"> </div>

                              <div class="rl">
                                 <div class="col-md-12 padding-p-r">
                                    <div class="de">
                                       <ul>
                                          <div class="de-hed table-responsive"><?php echo $this->lang->line('package_details_tour');?></div>

											<table class="table">
											  <tbody>
											    <tr>
												 <td><?php echo $this->lang->line('package_name');?> </td>
												 <td><?php echo ucfirst($r->package_name);?></td>
												</tr>
												
												<tr>
												 <td><?php echo $this->lang->line('source');?> </td>
												 <td><?php echo $r->source;?></td>
												</tr>
												
												<tr>
												 <td><?php echo $this->lang->line('destination');?> </td>
												 <td><?php echo $r->destination;?></td>
												</tr>
												<tr>
												 <td><?php echo $this->lang->line('dept_date');?> </td>
												 <td><?php echo $r->dept_date;?></td>
												</tr>
												
												<tr>
												 <td><?php echo $this->lang->line('arrival_date');?> </td>
												 <td><?php echo $r->arrival_date;?></td>
												</tr>
											  <tbody>
											</table>

                                          
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <?php
							  $attributes = array("name" => 'online_booking_form', "id" => 'online_booking_form');
              				  echo form_open(site_url()."welcome/passengerDetails",$attributes);
							  ?>
                               <input type="hidden" name="booking_ref" value="<?php echo date('ymdHis'); ?>"/>
                               <input type="hidden" name="check_cars" value="1" id="check_cars"  />
                               <input type="hidden" name="package_id" value="<?php echo $r->id;?>" />
                              <div class="panel-heading ters-hed">
                              
                                 <a href="<?php echo site_url();?>tourpackage/viewpackage/<?php echo $r->id;?>"  class="btn btn-danger" style="    width: 100%;
    text-transform: capitalize;
    background: #121e31;
    border-color: #121e31;"><?php echo $this->lang->line('view more');?></a>
                              </div>
                              <div class="book">
                              	<button type="submit" class="btn btn-danger" style="margin: 0px 13px 9px 5px; width: 96%;"><?php echo $this->lang->line('book_now');?></button>
                              </div>
                            <?php echo form_close(); ?>
                      
                           </div>
         </div>

<?php } } else { echo "<h4 align='middle'>Coming Soon.</h4>"; }?>

      </div>

   </div>
</div>
</div>
</div>

<script>
   function append_tnc(terms_conditions)
   {
      $("#tnc").html('');
      var terms_conditions = terms_conditions;
      if (terms_conditions!=null && terms_conditions!='')
         $("#tnc").html(terms_conditions);
      else
         $("#tnc").html('<p> No Terms and Conditions </p>');
   }
</script>
