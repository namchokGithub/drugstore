<?php

class M_appointment extends CI_Model {
    public $apm_id;
    public $apm_date;
    public $apm_time;
    public $apm_detail;
    public $apm_date_come;
    public $apm_emp_id;
    public $apm_cus_id;

    public function get_appointment()
    {
        $sql = "SELECT APM_ID as id
                        ,APM_DATE as date
                        ,APM_TIME as time
                        ,APM_DETAIL as detail
                        ,APM_DATE_COME as date_come
                        ,appointment.EMP_ID as emp_id
                        ,appointment.CUS_ID as cus_id
                        ,concat(CUS_FNAME,' ',CUS_LNAME) as cname
                        ,concat(employee.EMP_FNAME, ' ', employee.EMP_LNAME) as ename

                FROM appointment
                LEFT JOIN customer on customer.CUS_ID = appointment.CUS_ID
                LEFT JOIN employee on employee.EMP_ID = appointment.EMP_ID";
        $query = $this->db->query($sql);
        return $query;
    }
}