<?php

defined('BASEPATH') OR exit('No direct script access allowed');



class Taxi extends MY_Controller
{
	/**
	| MODULE: 			Auth
	| -----------------------------------------------------
	| This is auth module controller file.
	| -----------------------------------------------------
	**/
	function __construct()
	{
		parent::__construct();
        
		// Load MongoDB library instead of native db driver if required

	}

	

    public function index()
	{
	
	/*function index($param = '')
	{
      
		if ($param == "home") {
			$this->session->unset_userdata('journey_details');
			$this->session->unset_userdata('user');
		}
		

		if (!$this->ion_auth->logged_in()) {

			*/$this->data['css_type'] = array("homebooking");

			$this->data['bread_crumb'] = FALSE;

			$this->data['title'] = 'Book A Taxi';

			/**waiting time options**/
			$waiting_options = $this->dvbs_model->waiting_time_options();
			$this->data['waiting_options'] = $waiting_options;


			/**Airports records**/
			$airports = $this->dvbs_model->get_home_airports();
			$this->data['airports'] = $airports;
			
			/**Home vehicles**/
			$vehicles = $this->dvbs_model->get_home_packages();
			$this->data['vehicles'] = $vehicles; 
			
			$this->data['content'] = 'site/index';
			$this->_render_page(getTemplate(), $this->data);


	/*	} elseif ($this->ion_auth->is_member()) {
			
			$dt = array();
			$dt = $this->session->userdata('journey_details');
			if (count($dt) > 1) 
				redirect('welcome/passengerDetails', 'refresh');
			else 
				redirect('users');
		
		} elseif ($this->ion_auth->is_admin()) {
			   
			redirect('admin', 'refresh');
		
		} elseif($this->ion_auth->is_executive()) {
		
			redirect('executive', 'refresh');
            
		} elseif($this->ion_auth->is_driver()) {
		
			redirect('auth/logout', 'refresh');
		} */
	}

}