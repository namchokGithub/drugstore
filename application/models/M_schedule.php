<?php

class M_schedule extends CI_Model {
    public $sched_id;
    public $sched_time_start;
    public $sched_time_end;
    public $sched_time_detail;
    public $sched_date_come;
    public $sched_date_appointment;
    public $sched_status;
    public $sched_emp_id;
    public $sched_cus_id;

    public function get_scheduled()
    {
        $sql = "SELECT  SCHED_ID as id
                        ,schedule.EMP_ID as emp_id
                        ,schedule.CUS_ID as cus_id
                        ,concat(CUS_FNAME,' ',CUS_LNAME) as cname
                        ,concat(employee.EMP_FNAME, ' ', employee.EMP_LNAME) as ename
                        ,SCHED_STATUS as status
                        ,SCHED_DATE_APPOINTMENT as date_app
                        ,SCHED_DATE_COME as date_come   
                        ,SCHED_DETAIL as detail
                        ,SCHED_TIME_START as time_start
                        ,SCHED_TIME_END as time_end

                FROM schedule
                LEFT JOIN customer on customer.CUS_ID = schedule.CUS_ID
                LEFT JOIN employee on employee.EMP_ID = schedule.EMP_ID";
        $query = $this->db->query($sql);
        return $query;
    }
}