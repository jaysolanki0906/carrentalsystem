<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Hotels extends MY_Controller
{
	/**
	
	| -----------------------------------------------------
	|
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
		//$records = $this->dvbs_model->get_home_packages();
		//$this->data['records'] 				= $records;
		$this->data['active_class'] 		= 'hotels';
		$this->data['css_type'] 			= array();
		$this->data['title'] 				= $this->lang->line('hotels');
		$this->data['sub_heading'] 			= $this->lang->line('hotels');
		$this->data['content'] 				= 'site/hotels';
		$this->_render_page(getTemplate(), $this->data);
	}
}
?>