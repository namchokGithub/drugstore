<?php

class M_salary extends CI_Model {
    public $s_id;    
    public $s_period;    
    public $s_amount;    
    public $s_amount_received;    
    public $s_emp_id;

    public function get_salary()
    {
        $this->load->database();
        $sql = "SELECT concat(employee.EMP_FNAME, ' ', employee.EMP_LNAME) as name
                        ,S_ID as id
                        ,S_DATE as sdate
                        ,S_PERIOD as speriod
                        ,S_AMOUNT as amount
                        ,S_AMOUNT_RECEIVED as amount_rec
                FROM salary
                LEFT JOIN employee on employee.emp_id = salary.emp_id";
        $query = $this->db->query($sql);
        return $query;
    }
    // เงินเดือน
}