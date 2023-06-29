<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Invoice extends MY_Controller
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
      'url' => site_url().'invoice/ajax_get_all_bookings',
      'disablesorting' => '0,10',
    );
    
    $this->data['css_type']     = array('datatable');
    
    $this->data['active_class'] = "invoice";
        $this->data['active_ex_class'] = "invoice";
    
    $this->data['message']    = $this->session->flashdata('message');
    $this->data['title']      = $this->lang->line('invoice');
    $this->data['content']    = "admin/invoice";
    $this->_render_page(getTemplate(), $this->data);  
    
  }
    
    /**
     * Bookings list
     *
     *
     * @return array
    **/ 
    function ajax_get_all_bookings() 
    {
        
        if($this->input->is_ajax_request())
    {
      
      // return false;
      $data = array();
      $no = $_POST['start'];

      $conditions = array();

      $columns = array('b.booking_ref','b.registered_name','b.bookdate','b.pick_date','b.pick_time','b.pick_point','b.distance','b.distance_type','v.name','b.cost_of_journey'); 
      
      $query  = "SELECT b.*,v.name FROM vbs_bookings AS b , vbs_vehicle AS v WHERE b.vehicle_selected = v.id";
      
           
            
      $records = $this->base_model->get_datatables($query, 'customnew', $conditions, $columns, array('b.bookdate'=>'desc'));
      
            
            
      if(!empty($records)) {

        foreach($records as $record)
        {
          $no++;
          $row = array();

          $row[] = $no;
                    
          $row[] = '<span>'.$record->booking_ref.'</span>';
                   
                    $row[] = '<span>'.$record->registered_name.'</span>';
                    
                    $row[] = '<span>'.get_date($record->bookdate).'</span>';
                    
                    $row[] = '<span>'.get_date($record->pick_date).'</span>';
                    
                    $row[] = '<span>'.$record->pick_time.'</span>';
                    
                    $row[] = '<span>'.$this->config->item('site_settings')->currency_symbol.$record->cost_of_journey.'</span>';
                    
                    $class = 'badge warning';
          if ($record->is_conformed == 'confirm')
            $class = 'badge success'; 
          else if($record->is_conformed=='pending')
                        $class = 'badge warning';
                    else if($record->is_conformed=='cancelled')
                        $class = 'badge danger';
                        else if($record->is_conformed=='refund')
                        $class = 'badge dark';
                                       
                     
          $row[] = '<span class="'.$class.'">'.$record->is_conformed.'</span>';
                    
                    

          		 $row[]= '<span><a target="_blank" href="http://127.0.0.1:8012/car_rental_system/uploads/invoice_files/temp/'.$record->booking_ref.'.pdf'.'">'.'Click Here'.'</a></span>';

                 //   $row[] = $str;
                    
                    $row[] = '<span>'.$record->pick_point.'</span>';
                    
                    $row[] = '<span>'.$record->drop_point.'</span>';
                    
                    
          $row[] = '<span>'.$record->distance.$record->distance_type.'</span>';
                    
                    
                    $row[] = '<span>'.$record->name.'</span>';
                    
                    
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
