<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Tour extends MY_Controller
{
		function __construct()
		{
		parent::__construct();
         $this->load->model('file');
		// Load MongoDB library instead of native db driver if required

		$this->config->item('use_mongodb', 'ion_auth') ? $this->load->library('mongo_db') : $this->load->database();
		$this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
		$this->lang->load('auth');
      
        if (!$this->ion_auth->logged_in() || !($this->ion_auth->is_admin() || $this->ion_auth->is_executive())) 
            redirect(SITEURL);
       
		}
	/**
     * Packages list
     *
     *
     * @return array
    **/ 
	public function index()
	{
       
        
        $this->data['ajaxrequest'] = array(
            'url' => site_url().'tour/ajax_get_all_packages',
            'disablesorting' => '0,10',
        );
        $this->data['css_type']     = array('datatable');
        
        $this->data['active_class'] = "bookings";
        $this->data['active_ex_class'] = "all_bookings";
       
        $this->data['message']      = $this->session->flashdata('message');
        $this->data['title']        = $this->lang->line('all_packages');
        $this->data['content']      = "admin/packages/all_packages";
        $this->_render_page(getTemplate(), $this->data);


	}

      function ajax_get_all_packages() 
    {
      
        if($this->input->is_ajax_request())
        {


            // return false;
            $data = array();
            $no = $_POST['start'];

            $conditions = array();

            $columns = array('package_  name','source','destination','description','arrival_date','arrival_time','dept_date','dept_time','price','image','status'); 
            
            $query  = "SELECT * From ".TBL_PREFIX.TBL_TOURPACKAGE;
                 
            $records = $this->base_model->get_datatables($query, 'customnew', $conditions, $columns, array('id'=>'desc'));
            
           
            if(!empty($records)) {

                foreach($records as $record)
                {
                    //for display image in all packages data table
                    $img = '<img class="img-responsive package-img" src="'.get_package_image($record->image).'" alt="package Image">';
                        
                    
                    $no++;
                    $row = array();

                  //  $row[] = '<input id="checkbox-'.$record->id.'" class="checkbox-custom checkbox_class" name="ids[]" type="checkbox" onclick="javascript:deselectall_check(\'selectall\')" value="'.$record->id.'">';
                    
                        $row[] = $no;
                        
                    $row[] = '<span>'.$record->package_name.'</span>';
                   
                    $row[] = '<span>'.$record->source.'</span>';
                    
                    $row[] = '<span>'.$record->destination.'</span>';
                    
                    //$row[] = '<span>'.$record->description.'</span>';
                     $row[] = '<span>'.$record->arrival_date.'</span>';
                   
                    $row[] = '<span>'.$record->arrival_time.'</span>';
                    
                    $row[] = '<span>'.$record->dept_date.'</span>';
                    
                    $row[] = '<span>'.$record->dept_time.'</span>';
                    $row[] = '<span>'.$record->price.'</span>';
                  



                     $row[] = '<span>'.$img.'</span>';
                    
                 //   $row[] = '<span>'.$record->image.'</span>';
                   
                    
                    
                    $dta = '<div class="table-action">';


                   
                 /*   $dta .= '<span> ';
                    $dta .= '<a href="'.site_url().'vehicle_settings/vehicles/Edit/'.$record->id.'" class="'.CLASS_EDIT_BTN.'" title="Edit Vehicle"><i class="'.CLASS_ICON_EDIT.'" ></i></a>';
                    $dta .= '</span>';*/


                    $dta .= '<span>';
                    $dta .= form_open(site_url().'tour/add_packages/Edit/'.$record->id);
                    $dta .= '<input type="hidden" name="id" value="'.$record->id.'">';
                    $dta .= '<button type="submit" name="edit_package" class="'.CLASS_EDIT_BTN.'"><i class="'.CLASS_ICON_EDIT.'" ></i></button>';
                    $dta .= form_close();
                    $dta .= '</span>';
                    
                    $str = $dta;
                    
                
                  $str .= '<a data-toggle="modal" class="btn btn-danger" title="Delete package" data-target="#deletemodal" onclick="delete_record('.$record->id . ',\''.site_url().'tour/delete_record'.'\')">
                        <i class="fa fa-trash" data-toggle="tooltip" data-placement="left" title="Delete package"></i>
                    </a>';
                    

                $str .= '</div>';
                    
                
                    $row[] = $str;
                    
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


    function add_packages() 
        {
        
        if (isset($_POST['add_package'])) {
            $msg="";
            $this->form_validation->set_rules('packagename', 'Package Name', 'xss_clean|required');
            $this->form_validation->set_rules('local_pick', 'Source', 'xss_clean|required');
            $this->form_validation->set_rules('local_drop', 'Destination', 'xss_clean|required');
            $this->form_validation->set_rules('description', 'Description', 'xss_clean|required');
            $this->form_validation->set_rules('arrival_date', 'arrival_date', 'xss_clean|required');
            $this->form_validation->set_rules('arrival_time', 'arrival_time', 'xss_clean|required');
            $this->form_validation->set_rules('dept_date', 'Departure_date', 'xss_clean|required');
            $this->form_validation->set_rules('dept_time', 'Departure_time', 'xss_clean|required');
            $this->form_validation->set_rules('price', 'Price', 'xss_clean|required');



            $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
			

            $id = $this->input->post('id');
          
			
            if($this->form_validation->run() == TRUE) 
            {
                $inputdata['package_name'] 	= $this->input->post('packagename');
                $inputdata['source']    =   $this->input->post('local_pick');
                $inputdata['destination']    = $this->input->post('local_drop');
                $inputdata['description']    = $this->input->post('description');
                $inputdata['arrival_date']  = date('Y-m-d', strtotime($this->input->post('arrival_date')));
                $inputdata['arrival_time']     = $this->input->post('arrival_time');
                $inputdata['dept_date']    = date('Y-m-d', strtotime($this->input->post('dept_date')));

                $inputdata['dept_time']     = $this->input->post('dept_time');
				 $inputdata['price']     = $this->input->post('price');
                
                $inputdata['status']     = $this->input->post('status');
                if (!empty($_FILES['userfile']['name'])) 
                {
					$inputdata['image']     = $_FILES['userfile']['name'];
				}

              $table_name 			= "tourpackage";

                
                     if($this->input->post('id') > 0)
                {
                    $where['id'] = $this->input->post('id');
                    if($this->base_model->update_operation($inputdata,$table_name, $where))
                    {
                        $msg .= $this->lang->line('details_saved_successfully');
                        $status = 0;
                    }
                    else
                    {
                        $msg .= $this->lang->line('details_not_saved');
                        $status = 1;
                    }
					  if (!empty($_FILES['userfile']['name']))
                       {
                          
                            $this->do_upload(
                                            './uploads/package_images/', 
                                            'jpg|jpeg|png', 
                                            $inputdata['image'], 
                                            'tour/add_packages'
                                            );
                        }
                }
                else
                {
                    $id = $this->base_model->insert_operation_id($inputdata,$table_name);
                    if($id)
                    {

                       
                        /* Save Vehicle Image */
                        if (!empty($_FILES['userfile']['name'])) 
                        {
                            $filename                           = $insertId . "_" . 
                                                                str_replace(' ', '', $_FILES['userfile']['name']);
                            $fileinput['image']                 = $filename;
                            // echo $filename; die();
                            $this->base_model->update_operation(
                                                                $fileinput, 
                                                                $common_table, 
                                                                array('id' => $insertId)
                                                                );
                            $this->do_upload(
                                            './uploads/package_images/', 
                                            'jpg|jpeg|png', 
                                            $filename, 
                                            'tour/add_packages'
                                            );
                        }

                        $msg = $this->lang->line('t_package') . " " . 
                        $this->lang->line('add_success');
                        $this->prepare_flashmessage($msg, 0);
                        redirect(site_url().'tour', 'refresh');
                
                        $msg .= $this->lang->line('details_saved_successfully');
                        $status = 0;
                    }
                    else
                    {
                        $msg .= $this->lang->line('details_not_saved');
                        $status = 1;
                    }
                }
                //unset($data, $where);
                
                    if($msg != '')
                        $this->prepare_flashmessage($msg,$status);
                        redirect(site_url().'tour',REFRESH);

            }
                                                  
            
                //unset($data, $where);

                
              //  redirect(site_url().'packages', 'refresh');
            //}

            
                
        }

        $pagetitle = $this->lang->line('add_package');
        if(isset($_POST['edit_package']))
        {
            $id = $this->input->post('id');
            if($id > 0)
            {
                $pagetitle = $this->lang->line('edit_package');
                $record = $this->base_model->fetch_records_from(TBL_TOURPACKAGE, array('id' => $id));
                if(empty($record)) 
                {
                    $this->prepare_flashmessage($this->lang->line('no_details_found'), 2);
                    redirect(site_url().'packages');             
                }
                
                $this->data['record'] = $record[0];
            }
            else
                redirect(site_url().'packages');
        }
		if(isset($record[0]->id))
			$this->data['files'] = $this->file->getRows($record[0]->id );
	
	
        $this->data['css_type']      = array('form','ckeditor');
		$this->data['gmaps']              = "true";
      
        $this->data['title']         = $pagetitle;
        
        $this->data['active_class']  = "tour";
       
        $this->data['content']              = "admin/packages/add_packages";
        
        $this->_render_page(getTemplate(), $this->data);
     

 }
 
 function uploadfiles(){
      
        // If file upload form submitted
        if($this->input->post('fileSubmit') && !empty($_FILES['files']['name'])){
            $filesCount = count($_FILES['files']['name']);
            for($i = 0; $i < $filesCount; $i++){
                $_FILES['file']['name']     = $_FILES['files']['name'][$i];
                $_FILES['file']['type']     = $_FILES['files']['type'][$i];
                $_FILES['file']['tmp_name'] = $_FILES['files']['tmp_name'][$i];
                $_FILES['file']['error']     = $_FILES['files']['error'][$i];
                $_FILES['file']['size']     = $_FILES['files']['size'][$i];
                
                // File upload configuration
                $uploadPath = 'uploads/files/';
                $config['upload_path'] = $uploadPath;
                $config['allowed_types'] = 'jpg|jpeg|png|gif';
                
                // Load and initialize upload library
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
                
                // Upload file to server
                if($this->upload->do_upload('file')){
                    // Uploaded file data
                    $fileData = $this->upload->data();
                    $uploadData[$i]['file_name'] = $fileData['file_name'];
					$uploadData[$i]['p_id'] = $this->input->post('id');
                    $uploadData[$i]['uploaded_on'] = date("Y-m-d H:i:s");
                }
            }
            
            if(!empty($uploadData)){
				
                // Insert files data into the database
                $insert = $this->file->insert($uploadData);
                
                // Upload status message
                $statusMsg = $insert?'Files uploaded successfully.':'Some problem occurred, please try again.';
                $this->session->set_flashdata('statusMsg',$statusMsg);
            }
        }
        
        // Get files data from the database
        $data['files'] = $this->file->getRows();
        $status =0;
        // Pass the files data to view
        $this->prepare_flashmessage($statusMsg,$status);
        redirect(site_url().'tour',REFRESH);
    }
 
  function delete_images()
    {   
		 $id = $this->input->post('imgs');
            if(!empty($id))
            {	
				// $ids = explode(',', $id);	
				  if ($this->base_model->delete_record_in('files', 'id', $id)) {
                        
				   $msg = $this->lang->line('delete_success');
				   $status = 0;
				   
				 		$this->prepare_flashmessage($msg,$status);
                        redirect(site_url().'tour',REFRESH);
				}
			}
	}
 
 
    function delete_record()
    {   
       
            
            $id = $this->input->post('id');
            if(!empty($id))
            {           
                $ids = explode(',', $id);
                $details = $this->base_model->fetch_records_from_in(TBL_TOURPACKAGE, 'id', $ids);
                
                if(!empty($details))
                {
                    
                    if ($this->base_model->delete_record_in(TBL_TOURPACKAGE, 'id', $ids)) {
                        
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
            
  } 
  
  	/**
     * DO UPLOAD FILES
     *
     * @param string $upload_path
     * @param string $allowed_types
     * @param string $filename
     * @param string $redirect_path
     * @return boolean
    **/ 
	function do_upload($upload_path = '', $allowed_types = '', $filename = '', $redirect_path)
	{
		$config['upload_path'] 				= $upload_path;
		$config['allowed_types'] 			= $allowed_types;
		$config['max_size'] 				= '20480';
		$config['max_width'] 				= '6000';
		$config['max_height'] 				= '6000';
		$config['file_name'] 				= $filename;
		$this->load->library('upload', $config);
		$this->upload->initialize($config);
		if (!$this->upload->do_upload()) {
			$error = array(
				'error' => $this->upload->display_errors()
			);

			$this->prepare_flashmessage($error['error'], 1);
			redirect($redirect_path, 'refresh');
		}
	}
      
}