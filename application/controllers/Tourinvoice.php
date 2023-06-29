<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Tourinvoice extends MY_Controller
{	
	/**
	| -----------------------------------------------------
	
	|
	| MODULE: 			FAQs
	| -----------------------------------------------------
	| This is FAQs module controller file.
	| -----------------------------------------------------
	**/
	function __construct()
	{
		parent::__construct();
        
		// Load MongoDB library instead of native db driver if required

		$this->config->item('use_mongodb', 'ion_auth') ? $this->load->library('mongo_db') : $this->load->database();
		$this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
		$this->lang->load('auth');
   
        check_access('admin');	
	}

 function index()
    {
        $this->data['ajaxrequest'] = array(
            'url' => site_url().'tourinvoice/ajax_get_all_tourbookings',
            'disablesorting' => '0,6',
        );
        
        $this->data['css_type']     = array('datatable');
        
        $this->data['active_class'] = "bookings";
        $this->data['active_ex_class'] = "all_bookings";
        
        $this->data['message']      = $this->session->flashdata('message');
        $this->data['title']        = $this->lang->line('tourinvoice');
        $this->data['content']      = "admin/tour_invoice";
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
                    
               $row[]= '<span><a href="'.site_url().'tourbookings/view_details/'.$record->id.'">'.'Click Here'.'</a></span>';

                    
                  //  $row[] = '<span>'.'ACTION'.'</span>';
                    
                    
                    
                   // $row[] = $str;//6
                   
                    
                    
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

  
   
}
