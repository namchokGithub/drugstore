-- appointment 
SELECT APM_ID as id
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
LEFT JOIN employee on employee.EMP_ID = appointment.EMP_ID


-- customer where id='0002'
SELECT  CUS_ID as id
        ,concat(CUS_FNAME,' ',CUS_LNAME) as cname
        ,CUS_BIRTHDATE as cbd
        ,CUS_GENDER as gender
        ,CUS_TEL as tel
        ,CUS_ADDDRESS as caddress
        ,CUS_ID_NUMBER as id_number
        ,CUS_BLOOD_TYPE as blood

FROM customer
WHERE CUS_ID = '0002'

-- employee by id = 1000
SELECT concat(employee.EMP_FNAME, ' ', employee.EMP_LNAME) as emp_name
        ,POSITION_NAME as pos_name
        ,BRAN_NAME as br_name
        ,EMP_TEL as tel
        ,EMP_EMAIL as email
        ,EMP_ID as id

FROM employee
LEFT JOIN position on position.position_id = employee.position_id
LEFT JOIN branch on branch.BRAN_ID = employee.br_id
WHERE employee.EMP_ID = 1000

-- schedule by id employee = 1000
SELECT WT_DATE
        ,wt_time_in as time_in
        ,wt_time_out as time_out
        ,wt_hour as hr
        ,WT_ID as id

FROM employee
LEFT JOIN worktable on worktable.emp_id = employee.emp_id
WHERE employee.emp_id = 1000    

-- work off by id employee = 4000
SELECT WO_DATE_START as date_start
        ,WO_TIME_START as time_start
        ,WO_DETAIL as detail
        ,WO_HOUR as hr
        ,WO_DATE_END as date_end
        ,WO_DATE_TIME as time_end
        ,WO_ID as id

FROM employee
LEFT JOIN workoff on workoff.emp_id = employee.emp_id
WHERE employee.emp_id = 4000

-- get all product
SELECT PD_ID as id
        ,PD_NAME as pdname
        ,PD_TYPE as pftype
        ,PD_RETAIL_PRICE as retail_price
        ,PD_SALE_PRICE as sale_price
        ,PD_AMOUNT as amount
        ,PD_DESCRIOTION as pddescription

FROM PRODUCT

-- get product limit 3
SELECT PD_ID as id
        ,PD_NAME as pdname
        ,PD_TYPE as pftype
        ,PD_RETAIL_PRICE as retail_price
        ,PD_SALE_PRICE as sale_price
        ,PD_AMOUNT as amount
        ,PD_DESCRIOTION as pddescription

FROM PRODUCT
LIMIT 3

-- show salary of employee
SELECT concat(employee.EMP_FNAME, ' ', employee.EMP_LNAME) as name
        ,S_ID as id
        ,S_DATE as sdate
        ,S_PERIOD as speriod
        ,S_AMOUNT as amount
        ,S_AMOUNT_RECEIVED as amount_rec

FROM salary
LEFT JOIN employee on employee.emp_id = salary.emp_id

-- show schedul
SELECT  SCHED_ID as id
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
LEFT JOIN employee on employee.EMP_ID = schedule.EMP_ID
