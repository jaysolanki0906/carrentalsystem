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
   .custom-list:nth-child(3n+1){
    clear:both;
}
</style>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel"> </h4>
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
         <aside class="hedding"> <?php echo "Hotels"; ?>  </aside>
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
    
<?php
 $attributes = array("name" => 'online_package_booking_form', "id" => 'online_package_booking_form');
   echo form_open(site_url().'welcome/passengerDetails',$attributes); ?>

<?php
							$xml=simplexml_load_file(SITEURL."hotel-api.xml") or die("Error: Cannot create object");
						$i=0;
						foreach($xml->children() as $hotels) { 
							$i++;
						  ?>
         <div class="col-md-4 custom-list">
             <div class="first-car white padding cs-card-card">
                              <div class="first-car-hed"><?php echo $hotels->name; ?></div>

                        <div class="first-car-img"> <img width="100%" src="<?php echo $hotels->image; ?>"> </div>

                              <div class="rl">
                                 <div class="col-md-12 padding-p-r">
                                    <div class="de">
                                       <ul>
                                          <div class="de-hed table-responsive">Hotel Details</div>

                                            <table class="table">
                                              <tbody>
                                                <tr>
                                                 <td>Address</td>
                                                 <td><?php echo $hotels->address; ?></td>
                                                </tr>
                                                
                                                <tr>
                                                 <td>Brekfast</td>
                                                 <td><span style="text-transform:capitalize;"><?php echo $hotels->breakfast; ?></span></td>
                                                </tr>
                                                
                                                <tr>
                                                 <td>Wifi </td>
                                                 <td><?php if($hotels->wifi == 1) echo "Yes"; else echo "No"; ?></td>
                                                </tr>
                                                
                                                <tr>
                                                 <td>Parking</td>
                                                 <td><?php if($hotels->parking == 1) echo "Yes"; else echo "No"; ?></td>
                                                </tr>
                                                 <tr>
                                                 <td>Pool</td>
                                                 <td><?php if($hotels->pool == 1) echo "Yes"; else echo "No"; ?></td>
                                                </tr>
                                                <tr>
                                                 <td>Price</td>
                                                 <td><?php echo $this->config->item('site_settings')->currency_symbol.$hotels->price ?></td>
                                                </tr>
                                              <tbody>
                                            </table>

                                       </ul>
                                    </div>
                                 </div>
                              </div>

                               
                             <div class="book">
                                 <a href="<?php echo $hotels->link ?>" class="pa-cbook" target="_blank">View More Details</a></div>

                           </div>
                        </div>
       	 <?php } ?>
        </div>
	</div>
</div>
</div>
</div>
