<?php
 
defined('BASEPATH') OR exit('No direct script access allowed');

class Tourbookings extends MY_Controller
{   
    /**
    | ----------------------------------------------------
    |
    | MODULE:           Bookings
    | -----------------------------------------------------
    | This is Bookings module controller file.
    | -----------------------------------------------------
    **/
    function __construct()
    {
        parent::__construct();
        
        // Load MongoDB library instead of native db driver if required

        $this->config->item('use_mongodb', 'ion_auth') ? $this->load->library('mongo_db') : $this->load->database();
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
      
        if (!$this->ion_auth->logged_in() || !($this->ion_auth->is_admin() || $this->ion_auth->is_executive())) 
            redirect(SITEURL);
       
    }


    /**
     * Bookings list
     *
     *
     * @return array
    **/ 
    function index()
    {
        $this->data['ajaxrequest'] = array(
            'url' => site_url().'tourbookings/ajax_get_all_tourbookings',
            'disablesorting' => '0,6',
        );
        
        $this->data['css_type']     = array('datatable');
        
        $this->data['active_class'] = "bookings";
        $this->data['active_ex_class'] = "all_bookings";
        
        $this->data['message']      = $this->session->flashdata('message');
        $this->data['title']        = $this->lang->line('all_tour_bookings');
        $this->data['content']      = "admin/tour_bookings/tour_bookings";
        $this->_render_page(getTemplate(), $this->data);    
        
    }
    
    /**
     * Bookings list
     *
     *
     * @return array
    **/ 
    function ajax_get_all_tourbookings() 
    {
        
        if($this->input->is_ajax_request())
        {


      
            // return false;
            $data = array();
            $no = $_POST['start'];

            $conditions = array();


            $columns = array('booking_ref','total_price','is_conformed','bookdate','registered_name'); 

            $query  = "SELECT * From ".TBL_PREFIX.TBL_PACKAGE_BOOKINGS;
 
            $records = $this->base_model->get_datatables($query, 'customnew', $conditions, $columns, array('id'=>'desc'));
            

            
            
            
            if(!empty($records)) {

                foreach($records as $record)
                {
                    $no++;
                    $row = array();

                    $row[] = $no;
                    
                    $row[] = '<span>'.$record->booking_ref.'</span>';//1
                   
                    $row[] = '<span>'.$record->registered_name.'</span>';//2
                    
                    $row[] = '<span>'.get_date($record->bookdate).'</span>';//3
                   
                    $row[] = '<span>'.$this->config->item('site_settings')->currency_symbol.$record->total_price.'</span>';//4
                    
                    $class = 'badge warning';
                    if ($record->is_conformed == 'confirm')
                        $class = 'badge success';   
                    else if($record->is_conformed=='pending')
                        $class = 'badge warning';
                    else if($record->is_conformed=='cancelled')
                        $class = 'badge danger';
                    else if($record->is_conformed=='refund')
                        $class = 'badge dark';                   
                     
                    $row[] = '<span class="'.$class.'">'.$record->is_conformed.'</span>';//5
                    
                    
                  //  $row[] = '<span>'.'ACTION'.'</span>';
                    
                    
                    //ACTION
                    $str = '<div class="btn-group">
                              <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">
                              <span class="caret"></span></button>
                              <ul class="dropdown-menu menu-drop" role="menu" aria-labelledby="dLabel">';
                              
                    if ($record->is_conformed=="pending" || $record->is_conformed=="cancel") {  
                    
                    $str .= '<li>
                            <a href="javascript:void(0)" onclick="chnage_booking_status('.$record->id . ', \''.'confirm'.'\', \''.site_url().'tourbookings/change_status'.'\')" >'.$this->lang->line('confirm').'</a>
                            </li>';

                         
                             
                    } if ($record->is_conformed=="pending" || $record->is_conformed=="confirm") {        
                                 
                    $str .= '<li>
                            <a href="javascript:void(0)" onclick="chnage_booking_status('.$record->id . ', \''.'cancel'.'\', \''.site_url().'tourbookings/change_status'.'\')" >'.$this->lang->line('cancel').'</a>
                            </li>';             
                                 
                    }          
                                 
                    $str .= '<li>
                                <a href="javascript:void(0)" data-toggle="modal" data-target="#deletemodal" onclick="delete_record('.$record->id . ',\''.site_url().'tourbookings/delete_record'.'\')">'.$this->lang->line('delete').'</a>
                             </li> 
                              <li>
                            <a href="javascript:void(0)" onclick="chnage_booking_status('.$record->id . ', \''.'refund'.'\', \''.site_url().'tourbookings/change_status'.'\')" >'.$this->lang->line('refund').'</a>
                            </li>
                             <li>
                             <a href="'.site_url().'tourbookings/view_details/'.$record->id.'">'.$this->lang->line('view_details').'</a>
                             </li>
                             
                             
                             </ul>
                           </div>';
                    //ACTION
                    
                    $row[] = $str;//6
                   
                    
                    
                  //  $row[] = '<span>'.$record->package_name.'</span>';
                    
                    
                    $data[] = $row;
                
                }
            }

            $output = array(
                    "draw" => $_POST['draw'],
                    "recordsTotal" => $this->base_model->numrows,
                    "recordsFiltered" => $this->base_model->numrows,
                    "data" => $data,
            );

            echo json_encode($output);
        }
        
    }

/**
     * Add TourBooking
     *
     *
     * @return boolean
    **/ 
	function add_tour_booking() 
 {
    
        
        if (isset($_POST['add_booking'])) {
            
           

           
            
            
            $this->form_validation->set_rules('package_name', 'Package Name', 'xss_clean|required');
            
            $this->form_validation->set_rules('payment_mode', 'Payment Mode', 'xss_clean');
            $this->form_validation->set_rules('status', 'Status', 'xss_clean');
            
            $this->form_validation->set_rules(
													'customer_name',
													'Customer Name', 
													'required|xss_clean'
												  );
												  
            $this->form_validation->set_rules(
													'customer_phone',
													'Customer Phone',
													'required|xss_clean|min_length[9]|max_length[30]'
												  );
            
            $this->form_validation->set_rules(
													'customer_email', 
													'Customer Email', 
													'valid_email|xss_clean'
												 );
            $this->form_validation->set_rules('total_cost', 'Price', 'required|xss_clean');
            $this->form_validation->set_rules('booking_ref', 'Cost', 'required|xss_clean');
            $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
                                                  
            if ($this->form_validation->run() == TRUE) {
                   
               $inputdata['booking_ref'] 	= $this->input->post('booking_ref');

              //  $inputdata['pick_date'] 	= date('Y-m-d', strtotime($this->input->post('pick_date')));

                
                $inputdata['total_price'] 	= $this->input->post('total_cost');

               
                //$inputdata['payment_type'] 		= $this->input->post('payment_mode');
               // $inputdata['is_conformed'] 		= $this->input->post('status');
                $inputdata['registered_name'] 	= $this->input->post('customer_name');
                $inputdata['phone'] 		= $this->input->post('customer_phone');
                $inputdata['email'] 		= $this->input->post('customer_email');
                $inputdata['bookdate'] 		= date('Y-m-d');


             //   $inputdata['tax_applied']  = 'No';
               // $inputdata['tax_amount']    = NULL;

                $inputdata['coupon_applied']    = 'No';
                $inputdata['coupon_code']       = NULL;
                $inputdata['coupon_discount_amount'] = NULL;


                
                $table_name 				= "package_bookings";
                
                if ($this->base_model->insert_operation($inputdata, $table_name)) {
                    
                    $this->prepare_flashmessage($this->lang->line('admin_booking_message'), 0);
                }
                else {
                    $this->prepare_flashmessage($this->lang->line('unable_to_book'), 1);
                    
                }
                
                redirect(site_url().'tourbookings', 'refresh');
            }

            
                
        }
        
      
        $data['package_name'] = $this->dvbs_model-> get_package_name(); 
        $this->data['gmaps'] 				= "true";
        $this->data['css_type'] 			= array('form');
        $this->data['title'] 				= $this->lang->line('add_tour_booking');
        $this->data['active_class'] 		= "bookings";
        
        $this->data['active_ex_class']      = "add_booking";

        $this->data['content'] 				= "admin/tour_bookings/add_tour_booking";
        
        $this->_render_page(getTemplate(), $this->data);	
 }


    /**
     * Change status of TourBooking
     *
     *
     * @return boolean
    **/ 
   

 function change_status() 
    {
       /* echo "<pre>";
        print_r( $this->input->post('bkstatus'));
        echo "</pre>";
        die();*/
        $msg = '';
        
        if (!DEMO) {
            
            $id         = $this->input->post('id');
            $status     = $this->input->post('bkstatus');
            
            if (!empty($id) && !empty($status)) {       
            
                $ids = explode(',', $id);
                
                $details = $this->base_model->fetch_records_from_in(TBL_PACKAGE_BOOKINGS, 'id', $ids);
                
                if (!empty($details)) {
                    
                    $data = array();
                    
                    if ($status == 'confirm') {
                        
                        $data['is_conformed'] = 'confirm';
                        $msg = $this->lang->line('booking_confirmed');
                        
                    } else if ($status == 'cancel') {
                        
                        $data['is_conformed'] = 'cancelled';            
                        $msg = $this->lang->line('booking_cancelled');
                    } else if ($status == 'refund') {
                        
                        $data['is_conformed'] = 'refund';            
                        $msg = $this->lang->line('refunded');
                    }  
                    $data['is_new']  = 1;
                    
                    
                   if ($this->base_model->update_operation_in( $data, TBL_PACKAGE_BOOKINGS, 'id', explode(',', $id) )) {
                    
                        // email funuctionality
                       /* $site_settings_rec = $this->config->item('site_settings');

                        $journey_details = $this->base_model->run_query("SELECT b.*,v.name FROM vbs_bookings as b, vbs_vehicle as v WHERE b.id=" . $id . " AND v.id = b.vehicle_selected");
                        
                        if (!empty($journey_details))
                            $journey_details = $journey_details[0];
                        
                        $journey_details = (array) $journey_details;
                        
                        $this->data['journey_details'] = $journey_details;*/

                        
                        //SEND EMAIL TO USER WHEN CANCELLED/CONFIRMED BOOKING
                       /* $message =  $this->booking_confirm_cancel_template_user($this->data);
                        
                        $from = $site_settings_rec->portal_email;
                        
                        $to   = $journey_details['email'];
                        
                        $sub  = $this->lang->line('booking_ref').": ".$journey_details['booking_ref'];
                        
                        sendEmail($from, $to, $sub, $message);*/
                        
                        
                        //SEND SMS TO USER
                     /*   $mobile_number  = $journey_details['phone'];
                    
                        if ($this->config->item('site_settings')->sms_notification=='Yes' && $mobile_number!='') {
                            
                            $sms_details = $this->base_model->fetch_records_from(TBL_SMS_TEMPLATES, array('subject'=>'booking_status_changed'));
                            
                            if(!empty($sms_details))
                            {
                                $content = strip_tags($sms_details[0]->sms_template);
                                
                                $content        = str_replace("__USER__", $journey_details['registered_name'], $content);
                                
                                if ($status == 'confirm') {
                                    
                                    $content        = str_replace("__BOOKING_STATUS__", 'Confirmed', $content);
                                } else if ($status == 'cancel') {
                                    
                                    $content        = str_replace("__BOOKING_STATUS__", 'Cancelled', $content);
                                }
                                
                                $content        = str_replace("__BOOKING_REF_NO__", $journey_details['booking_ref'], $content);
                                
                                sendSMS($mobile_number, $content);
                            }
                        }*/
                        //
                
                    
                        echo json_encode(array('status' => 1, 'message' => $msg, 'action' => 'success'));
                    
                   } else {
                       
                        echo json_encode(array('status' => 0, 'message' => $msg, 'action' => 'failed'));
                   }
                   
                } else {
                    $msg = $this->lang->line('MSG_WRONG_OPERATION');
                    echo json_encode(array('status' => 0, 'message' => $msg, 'action' => 'failed'));
                }
            }
            else
            {
                $msg = $this->lang->line('MSG_WRONG_OPERATION');
                
                echo json_encode(array('status' => 0, 'message' => $msg, 'action' => 'failed'));
            }
            
        } else {                        
            $msg = 'Access Denied on demo server';              
            echo json_encode(array('status' => 0, 'message' => $msg, 'action' => 'failed'));        
        }
    }
   

    /**
     * Delete TourBooking
     *
     *
     * @return boolean
    **/ 
    function delete_record()
    {   
        if (!DEMO) {
            
            $id = $this->input->post('id');
            if(!empty($id))
            {           
                $ids = explode(',', $id);
                $details = $this->base_model->fetch_records_from_in(TBL_PACKAGE_BOOKINGS, 'id', $ids);
                
                if(!empty($details))
                {
                    
                    if ($this->base_model->delete_record_in(TBL_PACKAGE_BOOKINGS, 'id', $ids)) {
                        
                       $msg = $this->lang->line('delete_success');
                        
                       echo json_encode(array('status' => 1, 'message' => $msg, 'action' => 'success','details'=>$details));
                    
                    } else {
                        
                        $msg = $this->lang->line('delete_failed');
                        
                        echo json_encode(array('status' => 0, 'message' => $msg, 'action' => 'failed'));
                    }
                    
                    
                }
                else
                {
                    $msg = $this->lang->line('MSG_WRONG_OPERATION');
                    echo json_encode(array('status' => 0, 'message' => $msg, 'action' => 'failed'));
                }
            }
            else
            {
                $msg = $this->lang->line('MSG_WRONG_OPERATION');
                
                echo json_encode(array('status' => 0, 'message' => $msg, 'action' => 'failed'));
            }
            
     } else {                      
                $msg = 'Access Denied on demo server';              
                echo json_encode(array('status' => 0, 'message' => $msg, 'action' => 'failed'));        
            }
    }


    /**
     * View Booking Details
     *
     *
     * @param int $id
     * @return array
    **/ 
    function view_details($id) 
    {

          $record = $this->base_model->run_query("SELECT tb.*,t.package_name FROM vbs_package_bookings AS tb , vbs_tourpackage AS t WHERE tb.package_id = t.id AND tb.id=".$id." ");
        
      
       /* echo "<pre>";
        print_r($record);
        echo "</pre>";
        die();*/
        
        if (!empty($record)) {
            $record = $record[0];
            
            $data = array();
            $data['is_new']             = 1;
            
            $where['id']                = $id;
            
            $this->base_model->update_operation($data,TBL_PACKAGE_BOOKINGS , $where);
            
            $this->data['gmaps']                = "false";
            $this->data['css_type']             = array('form');
            $this->data['record']               = $record;
            $this->data['active_class']         = "bookings";
            $this->data['title']                = $this->lang->line('tourbooking_details');
            $this->data['content']              = 'admin/tour_bookings//tourbooking_details';
            $this->_render_page(getTemplate(), $this->data);
        
        } else {
            redirect(site_url().'tourbookings');
        }
    }
}