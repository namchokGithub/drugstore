<?php

class M_product extends CI_Model {
    public $pd_id;
    public $pd_name;
    public $pd_type;
    public $pd_retail_price;
    public $pd_sale_price;
    public $pd_amount;
    public $pd_description;

    public function get_product()
    {
        $sql = "SELECT PD_ID as id
                        ,PD_NAME as pdname
                        ,PD_TYPE as pftype
                        ,PD_RETAIL_PRICE as retail_price
                        ,PD_SALE_PRICE as sale_price
                        ,PD_AMOUNT as amount
                        ,PD_DESCRIPTION as pddescription

                FROM PRODUCT";
        $query = $this->db->query($sql);
        return $query;
    }
    
    public function get_price_id($id)
    {
        $sql = "SELECT PD_RETAIL_PRICE as price
                FROM PRODUCT
                WHERE PRODUCT.PD_ID = ?";
        $query = $this->db->query($sql, array($id));
        return $query;
    }

    public function get_product_limit()
    {
        $sql = "SELECT PD_ID as id
                        ,PD_NAME as pdname
                        ,PD_TYPE as pftype
                        ,PD_RETAIL_PRICE as retail_price
                        ,PD_SALE_PRICE as sale_price
                        ,PD_AMOUNT as amount
                        ,PD_DESCRIPTION as pddescription

                FROM PRODUCT
                LIMIT 3";
        $query = $this->db->query($sql);
        return $query;
    }
}