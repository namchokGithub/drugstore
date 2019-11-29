<<<<<<< HEAD
<?php
class Drugstore extends CI_Controller {

    public function index()
    {
        $this->load->model('M_product','pro');
        $product = $this->pro->get_product_limit()->result();
        $data['product'] = json_encode($product);

        $this->load->view('drugstore\home',$data);
    }
    
    public function home()
    {
        $this->load->model('M_product','pro');
        $product = $this->pro->get_product_limit()->result();
        $data['product'] = json_encode($product);

        $this->load->view('drugstore\home',$data);
    }

    public function product_show()
    {
        $this->load->model('M_employee','emp');
        $data['emp'] = $this->emp->get_employee_by_id()->row();

        $this->load->model('M_customer','cus');
        $data['cus'] = $this->cus->get_customer_by_id()->row();

        $this->load->model('M_product','pro');
        $product = $this->pro->get_product()->result();
        $data['product'] = json_encode($product);

        $this->load->view('drugstore\product',$data);
    }

    public function employee_show()
    {
        $this->load->model('M_employee','emp');
        $data['emp'] = $this->emp->get_employee()->result();

        $this->load->model('M_salary','salary');
        $sal = $this->salary->get_salary()->result();
        $data['salary'] = json_encode($sal);

        $this->load->model('M_schedule','schedule');
        $sched = $this->schedule->get_scheduled()->result();
        $data['schedule'] = json_encode($sched);

        $this->load->view('drugstore\employee',$data);
    }

    public function get_emp_schedule($id){
        
        $this->load->model('M_employee','emp');
        $sched = $this->emp->get_employee_schedule($id)->result();
        
        echo json_encode($sched);
    }
    
    public function get_emp_workOff($id){
        
        $this->load->model('M_employee','emp');
        $wf = $this->emp->get_employee_workOff($id)->result();
        
        echo json_encode($wf);
    }
    
    public function get_appointment(){
        
        $this->load->model('M_appointment','app');
        $app = $this->app->get_appointment()->result();
        
        echo json_encode($app);
    }
    
    public function add_bill_customer()
    {
        $this->load->model('M_treatmentanddispense','tm');
        $tm->tm_date = $this->input->post('date');
        $tm->tm_price = $this->input->post('totalPrice');
        $tm->tm_emp_id = $this->input->post('emp_id');
        $tm->tm_cus_id = $this->input->post('cus_id');
        $tm->insert();

        $this->load->model('M_billcustomer','bc');
        $bc->bc_date = $this->input->post('date');
        $bc->bc_price = $this->input->post('totalPrice');
        $bc->bc_total_price = $this->input->post('totalPrice');
        $bc->bc_payment_date = $this->input->post('date');
        $bc->bc_payment_type = $this->input->post('payment_type');
        $bc->tm_emp_id = $this->input->post('emp_id');
        $bc->bc_cus_id = $this->input->post('cus_id');
        $bc->bc_tm_id = $tm->last_insert_id;
        $bc->insert();
        
        $array=$this->input->post('productId');
        $this->load->model('M_detailtreatment','dt');

        $count = count($array);
        for ($i = 0; $i < $count; $i++) {

            $this->load->model('M_product','pro');
            $price = $this->pro->get_product($array[i]);

            $dt->detailtreatment_amount = 1;
            $dt->detailtreatment_price = $price[0];
            $dt->detailtreatment_tm_id = $tm->last_insert_id;
            $dt->detailtreatment_pd_id = $array[i];
            $dt->insert();
        }

    }
}

?>
=======
<!-- Controller -->

<?php
class Drugstore extends CI_Controller {

    public function index()
    {
        $this->load->view('drugstore\home');
    }
}
>>>>>>> b1d6c11b4f036029a229c1a59c805ad5734246d4
