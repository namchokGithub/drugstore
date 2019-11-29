<?php

class M_billcustomer extends CI_Model {
    public $bc_id;
    public $bc_date;
    public $bc_price;
    public $bc_total_price;
    public $bc_payment_date;
    public $bc_payment_type;
    public $bc_emp_id;
    public $bc_cus_id;
    public $bc_tm_id;
    public $bc_ss_id;
    public $last_insert_id;

    public function insert()
    {
        $sql = "INSERT INTO billcustomer (BC_DATE, BC_PRICE, BC_TOTAL_PRICE, BC_PAYMENT_DATE, BC_PAYMENT_TYPE, EMP_ID, CUS_ID, TM_ID, SS_ID)
                VALUES(?, ?, ?, ?, ?, ?, ?, ?, 1)";
        $this->db->query($sql, array(
                                        $this->bc_date
                                        ,$this->bc_price
                                        ,$this->bc_total_price
                                        ,$this->bc_payment_date
                                        ,$this->bc_payment_type
                                        ,$this->tm_emp_id
                                        ,$this->bc_cus_id
                                        ,$this->bc_tm_id
                                        ,$this->bc_ss_id
                        ));
        $this->last_insert_id = $this->db->insert_id();
    }
}