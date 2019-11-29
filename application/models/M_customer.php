<?php

class M_customer extends CI_Model {
    public $cus_id;
    public $cus_fname;
    public $cus_lname;
    public $cus_birthdate;
    public $cus_gender;
    public $cus_tel;
    public $cus_address;
    public $cus_id_number;
    public $cus_blood_type;
    public $cus_drug_allerfgic;

    public function get_customer_by_id()
    {
        $sql = "SELECT  CUS_ID as id
                        ,concat(CUS_FNAME,' ',CUS_LNAME) as cname
                        ,CUS_BIRTHDATE as cbd
                        ,CUS_GENDER as gender
                        ,CUS_TEL as tel
                        ,CUS_ADDDRESS as caddress
                        ,CUS_ID_NUMBER as id_number
                        ,CUS_BLOOD_TYPE as blood

                FROM customer
                WHERE CUS_ID = '0002'";
        $query = $this->db->query($sql);
        return $query;
    }
}