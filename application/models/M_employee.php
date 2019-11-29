<?php

class M_employee extends CI_Model {

    public $emp_id;
    public $emp_fname;
    public $emp_lname;
    public $emp_tel;
    public $emp_address;
    public $emp_email;
    public $emp_birthdate;
    public $emp_salary;
    public $emp_salary_per_hour;
    public $emp_id_number;
    public $emp_date_work_start;
    public $emp_br_id;
    public $emp_pos_id;

    public function get_employee()
    {
        $this->load->database();
        $sql = "SELECT concat(employee.EMP_FNAME, ' ', employee.EMP_LNAME) as emp_name
                        ,POSITION_NAME as pos_name
                        ,BRAN_NAME as br_name
                        ,EMP_TEL as tel
                        ,EMP_EMAIL as email
                        ,EMP_ID as id
                        ,EMP_GENDER as gender
                FROM employee
                LEFT JOIN position on position.position_id = employee.position_id
                LEFT JOIN branch on branch.BRAN_ID = employee.br_id";
        $query = $this->db->query($sql);
        return $query;
    }
    // แสดงข้อมูลพนักงาน

    public function get_employee_by_id($id='000')
    {
        $this->load->database();
        $sql = "SELECT concat(employee.EMP_FNAME, ' ', employee.EMP_LNAME) as emp_name
                        ,POSITION_NAME as pos_name
                        ,BRAN_NAME as br_name
                        ,EMP_TEL as tel
                        ,EMP_EMAIL as email
                        ,EMP_ID as id
                FROM employee
                LEFT JOIN position on position.position_id = employee.position_id
                LEFT JOIN branch on branch.BRAN_ID = employee.br_id
                WHERE employee.EMP_ID = ?";
        $query = $this->db->query($sql, array($id));
        return $query;
    }
    // แสดงข้อมูลพนักงาน

    public function count_employee()
    {
        $this->load->database();
        $sql = "SELECT count(EMP_ID) as numOfEmp
                FROM employee";
        $query = $this->db->query($sql);
        return $query;
    }
    // จำนวนพนักงานทั้งหมด

    public function get_employee_schedule($id)
    {
        $this->load->database();
        $sql = "SELECT WT_DATE
                        ,wt_time_in as time_in
                        ,wt_time_out as time_out
                        ,wt_hour as hr
                        ,WT_ID as id
                FROM employee
                LEFT JOIN worktable on worktable.emp_id = employee.emp_id
                WHERE employee.emp_id = ?";
        $query = $this->db->query($sql, array($id));
        return $query;
    }
    // ตารางงาน

    public function get_employee_workOff($id)
    {
        $this->load->database();
        $sql = "SELECT WO_DATE_START as date_start
                        ,WO_TIME_START as time_start
                        ,WO_DETAIL as detail
                        ,WO_HOUR as hr
                        ,WO_DATE_END as date_end
                        ,WO_DATE_TIME as time_end
                        ,WO_ID as id
                FROM employee
                LEFT JOIN workoff on workoff.emp_id = employee.emp_id
                WHERE employee.emp_id = ?";
        $query = $this->db->query($sql, array($id));
        return $query;
    }
    // ตารางลางาน

}