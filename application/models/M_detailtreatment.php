<?php

class M_detailtreatment extends CI_Model {
    public $detailtreatment_id;
    public $detailtreatment_amount;
    public $detailtreatment_price;
    public $detailtreatment_tm_id;
    public $detailtreatment_pd_id;
    public $last_insert_id;

    public function insert()
    {
        $sql = "INSERT INTO detailtreatment (DETAIL_TM_AMOUNT, DETAIL_TM_PRICE, TM_ID, PD_ID)
                VALUES(?, ?, ?, ?)";
        $this->db->query($sql, array(
                                    $this->detailtreatment_amount;
                                    ,$this->detailtreatment_price
                                    ,$this->detailtreatment_tm_id
                                    ,$this->detailtreatment_pd_id

                        ));
        $this->last_insert_id = $this->db->insert_id();
    }

    
}