<!-- Controller -->

<?php
class Drugstore extends CI_Controller {

    public function index()
    {
        $this->load->view('drugstore\home');
    }
}