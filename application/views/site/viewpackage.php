<div class="container padding-p-0 banner">
   <div class="row">
      <div class="col-md-8 padding-p-l">
         <aside class="hedding"> <?php echo $this->lang->line('packages');?>  </aside>
      </div>
      <div class="col-md-4 padding-p-r">
         <aside class="bradecom">
            <ul>
               <li> <a href="<?php echo SITEURL;?>"> <?php echo $this->lang->line('home');?> </a> </li>
               <li>>></li>
               <li class="active"> <a href="#"> <?php if(isset($sub_heading)) echo 'View Package Details';?> </a> </li>
            </ul>
         </aside>
      </div>
   </div>
</div>
</header> 
<style>
/* Position the image container (needed to position the left and right arrows) */
.container1 {
  position: relative;
  padding: 0px 15px 0px 0px;
}

/* Hide the images by default */
.mySlides {
  display: none;
}
.mySlides img{
	border-radius: 2px;
}
.container1 .row {
    margin-right: 0px;
    margin-left: 0px;
}
/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
    border-radius: 3px 0 0 3px;
    background: none repeat scroll 0 0 #323232;
    margin-right: 29px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Six columns side by side */
.column1 {
  float: left;
  width: 16.66%;
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

fieldset, label { margin: 0; padding: 0; }



/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 

.left-side-cont{
	padding: 15px 15px;
    margin: 19px 1px;
}
#btn1.btn.btn-success{
	margin: 21px 7px 3px 7px;
	cursor:pointer;
}
</style>
<div class="container">   
  <div class="section-margin"> 
  <div class="left-side-cont"> 
    <div class="row"> 
     
	   <?php echo $this->session->flashdata('message'); ?>
        
        <div class="col-md-8">
		<div class="container1" style="max-width:1200px">
<h1><?php echo strtoupper($records[0]->package_name); ?></h1>
  <!-- Full-width images with number text -->
  <?php foreach($images as $image){  ?>
          <div class="mySlides">
              <img src="<?php echo base_url('uploads/files/'.$image['file_name']); ?>" style="width:100%;height: 350px;" >
          </div>
      <?php }?>
        
          <!-- Next and previous buttons -->
          <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
          <a class="next" onclick="plusSlides(1)">&#10095;</a>
        
          <!-- Thumbnail images -->
          <div class="row">
            <?php 
			$i=0;
			foreach($images as $image){  
			 $i++
			?>
           
            <div class="column1">
              <img class="demo cursor" src="<?php echo base_url('uploads/files/'.$image['file_name']); ?>" style="width:100%" onclick="currentSlide(<?php echo $i; ?>)" alt="The Woods">
            </div>
            <?php }?> 
          </div>
        </div>
        </div>
        <div class="col-md-4">
            <p>From Date: <?php echo $records[0]->arrival_date; ?>:</p>
            <p>To Date: <?php echo $records[0]->dept_date; ?></p>
            <p>From: <?php echo $records[0]->source; ?></p>
            <p>To: <?php echo $records[0]->destination; ?></p>
            <p class="package-price">Price: <?php echo $this->config->item('site_settings')->currency_symbol.' ';?> <?php echo $records[0]->price; ?></p>
            <?php
			  $attributes = array("name" => 'online_booking_form', "id" => 'online_booking_form');
			  echo form_open(site_url()."welcome/passengerDetails",$attributes);
			  ?>
			   <input type="hidden" name="booking_ref" value="<?php echo date('ymdHis'); ?>"/>
			   <input type="hidden" name="check_cars" value="1" id="check_cars"  />
			   <input type="hidden" name="package_id" value="<?php echo $records[0]->id; ?>" id="package_id"/>
            <div class="book">
             
             <button type="submit" class="btn btn-danger" style="margin: 0px 13px 9px 5px; width: 96%;"><?php echo $this->lang->line('book_now');?></button>
          </div>
          <?php echo form_close(); ?>
          
          
          </div>
          
 
      </div>
     <div class="row"> 
            <div class="col-md-12"> 
            
			
          
            <p><?php echo $records[0]->description; ?></p>
            
        
	</div>
    <?php if($reviewrating){ ?>
      	<div class="col-md-6">
                  <div class="well well-sm">
                       
                    
                        <div class="row" id="post-review-box">
                            <div class="col-md-12">                     
                                    <textarea class="form-control " cols="50" id="new-review" name="comment" placeholder="Enter your review here..." rows="5"></textarea>
                                    
                                <fieldset class="rating"> 
                                    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                                    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                                    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
                                    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                                    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>	
                  			  </fieldset>
                    <div class="text-right">
                                        <button class="btn btn-success" id="btn1">Leave a Reviews</button>
                                    </div>
                             </div>
                        </div>
                    </div>
                 
            
                    </div> 
     <?php } ?>
     <?php if($review){ ?>
    <div class="col-md-12">
          <div class="well well-sm">
                <div class="row" id="post-review-box">
                    <div class="col-md-12"> 
                    <h1 style="margin-bottom:20px;">Rating & Reviews</h1>
                    <?php
					foreach ($review as $r){ ?>
					<h3 style="margin:0px;text-transform:capitalize;font-weight: bold;"><?php echo $r->user_name; ?></h3>
					<?php if($r->rating){ ?>
                    <div style="clear:both;">
                    <fieldset class="rating">
                    <?php 
					for($i=5;$i>0;$i--){
						if($r->rating == $i){ ?>
							<input type="radio"  value="<?php echo $i; ?>" checked="true" /><label class = "full" for="star<?php echo $i; ?>"></label>	
						<?php }else{ ?>
							<input type="radio"  value="<?php echo $i; ?>" /><label class = "full" for="star<?php echo $i; ?>"></label>
					<?php }
					} ?>	
                  			  </fieldset>
                              </div>
                      <?php } ?>
					<div style="clear:both;"><?php echo $r->review;	?></div>				
					<hr>
                    
                    	
					<?php } ?>
					
                    </div>
                 </div>
           </div>
     </div>
     <?php } ?>
     
</div>
  </div>
</div>
</div>
<script type="text/javascript">

	var slideIndex = 1;
	showSlides(slideIndex);

function currentSlide(n) {
  showSlides(slideIndex = n);
}
function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
 
}
function plusSlides(n) {
  showSlides(slideIndex += n);
}
 $(document).ready(function()
    {
      $('#btn1').click(function(){
        
        var rate = $('input[name="rating"]:checked').val();
		var review = $('#new-review').val();
		var package_id = $('#package_id').val();
		
       $.ajax({

       type: 'POST',

       url: "<?php echo site_url();?>tourpackage/rating",
       data: {"rating":rate,"review":review,"package_id":package_id},       
       success:function(response){
		   location.reload();
              
            }         
       });
          });
      });
</script>