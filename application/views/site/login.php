
<html>
<head>
  </head>
<?php $this->load->view('site/common/auth/header.php');?>
<body onbeforeunload="CallbackFunction();">

         
          <div>
         <div class="container">
            <div class="row">
            <div class="col-md-6">
            <img src="https://pro2-bar-s3-cdn-cf2.myportfolio.com/e7232561-1f8e-4515-908b-9b04007d433b/d2088f8b-38fa-4958-95b0-e78b92ccaebc.gif?h=cd79430e858dd67dbfb9140759aae3a7"  style="width:100%; margin-top:70px; height: 50%;"/>
            </div>
            <div id="xyz">
               <div class="col-md-6">
                  <div id="total-login" class="login-box">

                     <?php 
                        $attributes = array("name" => 'login_form',"id" => 'login_form');
                        echo form_open(site_url().'auth/login',$attributes);?>

                     <div class="first-row">
                        <div class="login-head"><?php echo $this->lang->line('login'); ?></div>
                     </div>
                        <div  class="login-box-body">

                     <div class="col-md-12 col-xs-12">
                        <div class="input-group input-group-lg in-ty">
                           <?php echo $this->session->flashdata('message');?>
                           <?php echo form_input($identity); ?>
                           <?php echo form_error('identity'); ?>
                        </div>
                     </div>
                     <div class="col-md-12 col-xs-12">
                        <div class="input-group input-group-lg in-ty">  
                           <?php echo form_input($password); ?>
                           <?php echo form_error('password'); ?>
                           <input type="hidden" name="remember" value="1"/>
                        </div>
                     </div>
                     <div class="col-md-12 col-xs-12">
                        <div class="mt-2">
                              <input type="submit" name="login" class="btn btn-danger btn-block" value="<?php echo $this->lang->line('login'); ?>"/>  
                        </div>
                     </div>
                     <div class="forget-pass"> 
                        <a href="<?php echo site_url();?>auth/forgot_password"> <?php echo $this->lang->line('login_forgot_password');?></a> 
                     </div>
                     
                           <?php 
                     //google login/* 
   /* include_once APPPATH."libraries/google-api-php-client/Google_Client.php";
    include_once APPPATH."libraries/google-api-php-client/contrib/Google_Oauth2Service.php";
   // Google Project API Credentials
    $clientId = '529623234561-g94als02e0nngshfcbhqn4a78dvr72kn.apps.googleusercontent.com';
    $clientSecret = 'KUnfLk_T_ZfiP5rEEChmJd59';
    $redirectUrl = base_url() . 'user_authentication/';

   // Google Client Configuration
    $gClient = new Google_Client();
   $gClient->setApplicationName('Login');
   $gClient->setClientId($clientId);
   $gClient->setClientSecret($clientSecret);
   $gClient->setRedirectUri($redirectUrl);
   $gClient->setScopes('email');
   $google_oauthV2 = new Google_Oauth2Service($gClient);
   $aauthUrl = $gClient->createAuthUrl();  */

   
   //fb login
   $authUrl =  $this->facebook->login_url();
                     ?>
                     
                     
             
                     <div class="login-with-social">
            
                   <span><?php echo $this->lang->line('or_login_through');?></span> 
                   <?php //include "login3.php";?>
               
             <!--<div class="g-signin2" data-onsuccess="onSignIn" style="text-align: -webkit-center;"></div> -->
               <a href="<?php echo $google_login_url;?>"><img src="<?php echo IMGS_SYSTEM_DSN;?>sign-g.svg" alt="Login through Google" class="sc-icn" height="50"></a>
               
              <!--<a href="<?php echo $authUrl;?>"><img src="<?php echo IMGS_SYSTEM_DSN;?>sign-f.svg" alt="Login through Facebook" class="sc-icn" height="50"></a>-->
               
                </div>
                     
                     
                     
                     
                     
                   
                     <?php echo form_close(); ?>
                  </div>
                  </div>
              
              
                  
               </div>
               
            </div>
         </div>


      </div>

  <script src="<?php echo JS_BOOTSTRAP_MIN;?>"></script>


      <script src="<?php echo JS_JQUERY_VALIDATE_MIN;?>" type="text/javascript"></script>
      <script src="<?php echo JS_ADDITIONAL_METHODS_MIN;?>" type="text/javascript"></script>

      <script type="text/javascript"> 
     
         (function($,W,D)
         {
            var JQUERY4U = {};
         
            JQUERY4U.UTIL =
            {
                setupFormValidation: function()
                { 
               
         //form validation rules
                    $("#login_form").validate({
                        rules: {
                            identity: {
                                required: true
                            },
                     password: {
                                required: true
                            }
                        },
                  
                  messages: {
                     identity: {
                                required: "<?php echo $this->lang->line('user_name_valid');?>"
                            },
                     password: {
                                required: "<?php echo $this->lang->line('password_valid');?>"
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

      <script type="text/javascript">$(document).ready(function(){
         //$.colorbox({inline:true, href:".ajax"});
         });
      </script> 
    <script type="text/javascript">
      $("#xyz").hide();
      $(window).ready(function(){
         $("#xyz").show(1000);
      });
    </script>
    
      </div>
   </body>
   
</html>