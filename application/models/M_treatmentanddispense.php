<?php

class M_treatmentanddispense extends CI_Model {
    public $tm_id;
    public $tm_date;
    public $tm_price;
    public $tm_emp_id;
    public $tm_cus_id;
    public $last_insert_id;

    public function insert()
    {
        $sql = "INSERT INTO treatmentanddispense (TM_DATE, TM_PRICE, EMP_ID, CUS_ID)
                VALUES(?, ?, ?, ?)";
        $this->db->query($sql, array($this->tm_date, $this->tm_price, $this->tm_emp_id, $this->tm_cus_id));
        $this->last_insert_id = $this->db->insert_id();
    }
}