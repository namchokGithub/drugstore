<?php //print_r($emp); die;?>
<?php //echo $num->numOfEmp; die;?>
<html>
<head>
  <title> ผู้เชี่ยวชาญด้านทันตกรรม</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="shortcut icon" type="image/x-icon" href="<?php echo $this->config->item('images');?>title.png" />

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/fonts/icomoon/style.css">

  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>magnific-popup.css">
  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>jquery-ui.css">
  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>owl.carousel.min.css">
  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>owl.theme.default.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Prompt&display=swap" rel="stylesheet">
  <script src="<?php echo $this->config->item('js');?>jquery-3.3.1.min.js"></script>
    <script src="<?php echo $this->config->item('js');?>jquery-ui.js"></script>

  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>aos.css">
  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>style.css">
</head>

<style>
    a:link {
        color: black;
    }

    a:visited {
        color: black;
    }

    a:hover {
        color: #EDBDC5;
    }

    .btn-warning {
        color: black !important;;
    }

    .btn-primary {
        color: black !important;
    }

    @media (min-width: 576px){
        .modal-dialog {
            max-width: 1000px;
            margin: 1.75rem auto;
        }
    }

</style>

<body>

  <div class="site-wrap">

    <!-- navbar -->
    <div class="site-navbar py-2">
        <div class="search-wrap">
            <div class="container">
            <a href="#" class="search-close js-search-close"><span class="icon-close2"></span></a>
            <form action="#" method="post">
                <input type="text" class="form-control" placeholder="ค้นหาผลิตภัณฑ์...">
            </form>
            </div>
        </div>

        <div class="container">

            <div class="d-flex align-items-center justify-content-between">

                <!-- logo  -->
                <div class="logo">
                    <div class="site-logo">
                    <a href="<?php echo site_url('Drugstore');?>" class="js-logo-clone">คลินิกทันตกรรม</a>
                    </div>
                </div>
                <!-- end logo -->

                <div class="main-nav d-none d-lg-block">
                    <nav class="site-navigation text-right text-md-center" role="navigation">
                        <ul id="ul-nav" class="site-menu js-clone-nav d-none d-lg-block">
                            <li class="inactive"><a href="<?php echo site_url('Drugstore');?>">หน้าแรก</a></li>
                            <li class="active"><a href="#employee_section">พนักงาน</a></li>
                            <li class="inactive"><a href="#schedule_section">ตารางนัด</a></li>
                            <li class="inactive"><a href="#about-section">เกี่ยวกับเรา</a></li>
                            <li class="inactive"><a href="#contact-section">ติดต่อ</a></li>
                        </ul>
                    </nav>
                </div>

                <div class="icons">
                    <a href="#" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span></a>
                    <a href="#" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none">
                        <span class="icon-menu"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- end navbar -->

    <!-- employee_section -->
    <div id="employee_section" class="site-section">
        <div class="container">
            <div class="row">
                <div class="title-section col-12">
                    <h2 class="text-uppercase text-black mt-3 mb-3">
                        <img src="<?php echo $this->config->item('images');?>doctor.png" class="card-img-top" alt="..." style="width:100px;">
                        พนักงาน
                    </h2>
                </div>
            </div>
        
            <div class="row p-1">
            <?php foreach($emp as $i => $row){ 
                ($row->gender=='F')?$pic="user.png":$pic="user2.png";
                $gender = "";
                ($row->gender=='F')?$gender="นางสาว":$gender="นาย";
            ?>
                    <!-- col -->
                    <div class="col my-3">
                        <!-- card -->
                        <div class="card border-info" style="width: 20rem;" onclick="">
                        <div class="text-center mt-1">
                            <img src="<?php echo $this->config->item('images');?><?php echo $pic;?>" class="card-img-top" alt="..." style="width:100px;height:100px">
                        </div>
                            <div class="card-body">
                                <h5 class="card-title text-black"><?php echo $gender.$row->emp_name; ?></h5>
                                <h6 class="card-subtitle mb-2 text-muted">ตำแหน่ง: <?php echo $row->pos_name; ?></h6>

                                <p class="card-text text-black">
                                    เบอร์โทรติดต่อ <?php echo $row->tel; ?><br>
                                    E-mail <?php echo $row->email; ?>
                                    สาขา <?php echo $row->br_name; ?><br>
                                </p>

                                <div class="row">
                                    <div class="col"><a class="btn btn-pink float-left text-black" onclick="schedule('<?php echo $row->id;?>')">ตารางเข้างาน</a></div>
                                    <div class="col"><a class="btn btn-green float-right" onclick="workOff('<?php echo $row->id;?>')">ตารางหยุดงาน</a></div>
                                </div>
                            </div>
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col -->
            <?php } ?>
            </div>
        </div>        
    </div>
    <!-- end employee_section -->
    
    <!-- salary_section -->
    <div id="salary_section" class="site-section">
        <div class="container">
            <div class="row">
                <div class="title-section col-12">
                    <h2 class="text-uppercase text-black mt-3 mb-3">
                        <img src="<?php echo $this->config->item('images');?>money-bag.png" class="card-img-top" alt="..." style="width:100px;">
                        ตารางแสดงการจ่ายเงินเดือน
                    </h2>
                </div>
            </div>
        
            <div class="row">
                <div class="col-md-12">
                    <div class="site-blocks-table">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:10%">ลำดับ</th>
                                    <th class="text-center" style="width:40%">ชื่อ</th>
                                    <th class="text-center" style="width:20%">วันที่</th>
                                    <th class="text-center" style="width:10%">งวด</th>
                                    <th class="text-center" style="width:20%">จำนวนเงิน</th>
                                </tr>
                            </thead>
                            <tbody id="tb_sal">
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>        
    </div>
    <!-- end salary_section -->
    
    <!-- schedule_section -->
    <div id="schedule_section" class="site-section ">
        <div class="container">
            <div class="row">
                <div class="title-section col-12">
                    <h2 class="text-uppercase text-black mt-3 mb-3">
                        <img src="<?php echo $this->config->item('images');?>calendar.png" class="card-img-top" alt="..." style="width:100px;">
                        ตารางนัดแพทย์
                    </h2>
                    <div class="float-right"> <button class="btn btn-green" onclick="appointment()" >ใบแจ้งนัด</button></div>
                </div>
            </div>
        
            <div class="row">
                <div class="col-md-12">
                    <div class="site-blocks-table">
                        <table class="table table-bordered ">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:5%">ลำดับ</th>
                                    <th class="text-center" style="">เวลา</th>
                                    <th class="text-center" style="">วันที่</th>
                                    <th class="text-center" style="">วันที่ในใบนัด</th>
                                    <th class="text-center" style="">ผู้ใช้บริการ</th>
                                    <th class="text-center" style="">แพทย์</th>
                                    <th class="text-center" style="width:20%">หมายเหตุ</th>
                                </tr>
                            </thead>
                            <tbody id="tb_sched">
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>    
    </div>
    <!-- schedule_section -->

    <!-- about-section -->
    <div id="about-section" class="site-section bg-ds-pink bg-image ">
        <div class="container">
            <div class="row">
                <div class="title-section text-center col-12">
                    <h2 class="text-uppercase text-white mt-3 mb-3">เกี่ยวกับเรา</h2>
                </div>
            </div>

            <div class="row align-items-stretch">
            <div class="col-lg-6 mb-5 mb-lg-0">
                <a href="<?php echo site_url('Drugstore/product_show')?>" class="banner-1 h-100 d-flex" style="background-image: url('<?php echo base_url(); ?>/assets/images/bg_1.jpg');">
                <div class="banner-1-inner align-self-center">
                    <h2>ผลิตภัณฑ์คุณภาพ</h2>
                    <p>คลินิกทันตกรรมของเราประกอบด้วยผลิตภัณฑ์ที่มีคุณภาพและผ่านมาตรฐาน
                    </p>
                </div>
                </a>
            </div>
            <div class="col-lg-6 mb-5 mb-lg-0">
                <a href="#employee_section" class="banner-1 h-100 d-flex" style="background-image: url('<?php echo base_url(); ?>/assets/images/bg_2.jpg');">
                <div class="banner-1-inner ml-auto  align-self-center">
                    <h2> ดร.สลัม สาธิต</h2>
                    <p>ผู้เชี่ยวชาญด้านทันตกรรม<br>และมีสามาชิกท่านอื่น ๆ </p>
                </div>
                </a>
            </div>
            </div>
        </div>
    </div>
    <!-- end about-section -->

    <!-- contact-section -->
    <footer id="contact-section" class="site-footer">
        <div class="container">

            <div class="row">
                <div class="col-md-12 col-lg-6">
                    <div class="block-5 mb-5">
                        <h3 class="footer-heading mb-4">ข้อมูลการติดต่อ</h3>
                        <ul class="list-unstyled">
                            <li class="address">169 Thanon Long Had Bangsaen, Saen Suk, Chon Buri District, Chon Buri 20131</li>
                            <li class="phone">038 102 222</li>
                            <li class="email">pr@buu.ac.th</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row pt-0 mt-0 text-center">
                <div class="col-md-12">
                    <p>
                    Copyright &copy; <script>document.write(new Date().getFullYear());</script>
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- end contact-section -->
  </div>

<!-- Modal การเข้างาน -->
<div class="modal fade " style="margin-top:100px; width: 100%" id="sched" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title text-black" id="exampleModalLabel">ตารางการเข้างาน</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="site-blocks-table">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:10%">ลำดับ</th>
                                    <th class="text-center">วันที่</th>
                                    <th class="text-center">เวลาเข้างาน</th>
                                    <th class="text-center">เวลาออกงาน</th>
                                </tr>
                            </thead>
                            <tbody id="tb_sched">
                            
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">ปิด</button>
        </div>
        </div>
    </div>
</div>

<!-- Modal การใบนัด -->
<div class="modal fade " style="margin-top:100px; width: 100%" id="app" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-black" id="exampleModalLabel">ตารางใบนัด</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-12">
                <div class="site-blocks-table">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:10%">ลำดับ</th>
                                    <th class="text-center">เวลา</th>
                                    <th class="text-center">วันที่</th>
                                    <th class="text-center">รายละเอียด</th>
                                    <th class="text-center">ผู้ป่วย</th>
                                    <th class="text-center">เจ้าหน้าที่</th>
                                    <th class="text-center">วันที่มาพบ</th>
                                </tr>
                            </thead>
                            <tbody id="tb_app">
                            
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">ปิด</button>
        </div>
        </div>
    </div>
</div>

<!-- Modal การลางาน -->
<div class="modal fade " style="margin-top:100px; width: 100%" id="workOff" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title text-black" id="exampleModalLabel">ตารางการลางาน</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-md-12">
                <div class="site-blocks-table">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:10%">ลำดับ</th>
                                    <th class="text-center">วันที่</th>
                                    <th class="text-center">หมายเหตุ</th>
                                </tr>
                            </thead>
                            <tbody id="tb_wf">
                            
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">ปิด</button>
        </div>
        </div>
    </div>
</div>

    <script src="<?php echo $this->config->item('js');?>popper.min.js"></script>
    <script src="<?php echo $this->config->item('js');?>bootstrap.min.js"></script>
    <script src="<?php echo $this->config->item('js');?>owl.carousel.min.js"></script>
    <script src="<?php echo $this->config->item('js');?>jquery.magnific-popup.min.js"></script>
    <script src="<?php echo $this->config->item('js');?>aos.js"></script>
    <script src="<?php echo $this->config->item('js');?>main.js"></script>

    <script>
        var sched;
        var wf;

        function to_date(val){
            month = val.substr(5, 2)
            day = val.substr(8, 2)
            year = val.substr(0, 4)

            if(day.charAt(0)=='0'){
                day = day.substr(1)
            }

            if(month.charAt(0)=='0'){
                month = month.substr(1)
            }

            if (month == '1') {
                month = 'มกราคม';
            } else if (month == '2') {
                month = 'กุมภาพันธ์';
            } else if (month == '3') {
                month = 'มีนาคม';
            } else if (month == '4') {
                month = 'เมษายน';
            } else if (month == '5') {
                month = 'พฤษภาคม';
            } else if (month == '6') {
                month = 'มิถุนายน';
            } else if (month == '7') {
                month = 'กรกฎาคม';
            } else if (month == '8') {
                month = 'สิงหาคม';
            } else if (month == '9') {
                month = 'กันยายน';
            } else if (month == '10') {
                month = 'ตุลาคม';
            } else if (month == '11') {
                month = 'พฤศจิกายน';
            } else if (month == '12') {
                month = 'ธันวาคม';
            }

            return day + " " + month + " " + (parseInt(year) + 543)
        }   

        function appointment(){
            url = "<?php echo site_url('Drugstore/get_appointment');?>";
            $.ajax({
                type: "post",
                url: url,
                datatype: "json",
                success: function (data) {
                    tbody=""
                    app = JSON.parse(data);
                    console.log(app)
                    console.log(app[0].id)
                    if(app[0].id!=null){
                        for(key in app){
                            if(app[key].id){
                                tbody+="<tr>"
                                
                                tbody+="<td>"
                                tbody+=((parseInt(key) + (1)));
                                tbody+="</td>"
                                 
                                tbody+="<td>"
                                tbody+=app[key].time + " น."
                                tbody+="</td>"

                                tbody+="<td>"
                                tbody+=to_date(app[key].date)
                                tbody+="</td>"
                                
                                tbody+="<td>"
                                tbody+=app[key].detail
                                tbody+="</td>"
                                
                                tbody+="<td>"
                                tbody+=app[key].cname + " น."
                                tbody+="</td>"
                                
                                tbody+="<td>"
                                tbody+=app[key].ename + " น."   
                                tbody+="</td>"
                                
                                tbody+="<td>"
                                tbody+=to_date(app[key].date_come)
                                tbody+="</td>"
                                
                                tbody+="</tr>"
                            }
                        }
                    }else{
                        tbody+="<tr>"
                            
                            tbody+="<td colspan='6'>"
                            tbody+="ไม่พบข้อมูล"
                            tbody+="</td>"
                            
                        tbody+="</tr>"
                    }


                    $('#tb_app').html(tbody);

                    $('#app').modal()
                },
                error: function(){
                    console.log('error')
                }
            });
        }

        function schedule(id) {
            url = "<?php echo site_url('Drugstore/get_emp_schedule');?>"+"/"+id;
            $.ajax({
                type: "post",
                url: url,
                datatype: "json",
                success: function (data) {
                    tbody=""
                    sched = JSON.parse(data);
                    console.log(sched)
                    console.log(sched[0].id)
                    if(sched[0].id!=null){
                        for(key in sched){
                            if(sched[key].id){
                                tbody+="<tr>"
                                
                                tbody+="<td>"
                                tbody+=((parseInt(key) + (1)));
                                tbody+="</td>"
                                
                                tbody+="<td>"
                                tbody+=to_date(sched[key].WT_DATE)
                                tbody+="</td>"
                                
                                tbody+="<td>"
                                tbody+=sched[key].time_in + " น."
                                tbody+="</td>"
                                
                                tbody+="<td>"
                                tbody+=sched[key].time_out + " น."   
                                tbody+="</td>"
                                
                                tbody+="</tr>"
                            }
                        }
                    }else{
                        tbody+="<tr>"
                            
                            tbody+="<td colspan='4'>"
                            tbody+="ไม่พบข้อมูล"
                            tbody+="</td>"
                            
                        tbody+="</tr>"
                    }


                    $('#tb_sched').html(tbody);

                    $('#sched').modal()
                },
                error: function(){
                    console.log('error')
                }
            });
        }

        function workOff(id) {
            url = "<?php echo site_url('Drugstore/get_emp_workOff');?>"+"/"+id;
            $.ajax({
                type: "post",
                url: url,
                datatype: "json",
                success: function (data) {
                    tbody=""
                    wf = JSON.parse(data);
                    console.log(wf[0].id)

                    if (wf[0].id!=null) {
                        
                        for(key in wf){
                            if(wf[key].id){
                                tbody+="<tr>"
                                
                                    tbody+="<td>"
                                    tbody+=((parseInt(key) + (1)));
                                    tbody+="</td>"
                                    
                                    tbody+="<td>"
                                    tbody+="วันที่ " + to_date(wf[key].date_start) + " เวลา " + wf[key].time_start + " น. "
                                    tbody+="ถึง<br> วันที่ " + to_date(wf[key].date_end) + " เวลา " + wf[key].time_end + " น."
                                    tbody+="</td>"
                                    
                                    tbody+="<td>"
                                    tbody+=wf[key].detail 
                                    tbody+="</td>"
                                
                                tbody+="</tr>"
                            }
                        }
                    }else{
                        tbody+="<tr>"
                            
                            tbody+="<td colspan='3'>"
                            tbody+="ไม่พบข้อมูล"
                            tbody+="</td>"
                            
                        tbody+="</tr>"
                    }
                    $('#tb_wf').html(tbody);

                    $('#workOff').modal()
                },
                error: function(){
                    console.log('error')
                }
            });
        }

        function salary_show() {
            var sal = <?php echo json_encode($salary);?>;
            sal = JSON.parse(sal);
            tbody_sal = ""
            if(sal[0].id!=null){
                for(key in sal){
                    tbody_sal+="<tr>"
                    
                    tbody_sal+="<td>"
                    tbody_sal+=((parseInt(key) + (1)));
                    tbody_sal+="</td>"
                    
                    tbody_sal+="<td>"
                    tbody_sal+=sal[key].name
                    tbody_sal+="</td>"
                    
                    tbody_sal+="<td>"
                    tbody_sal+=to_date(sal[key].sdate)
                    tbody_sal+="</td>"
                    
                    tbody_sal+="<td>"
                    tbody_sal+=sal[key].speriod
                    tbody_sal+="</td>"
                    
                    tbody_sal+="<td>"
                    tbody_sal+=sal[key].amount_rec + " บาท"
                    tbody_sal+="</td>"
                    
                    
                    tbody_sal+="</tr>"
                }
            }else{
                tbody_sal+="<tr>"
                    
                    tbody_sal+="<td colspan='5'>"
                    tbody_sal+="ไม่พบข้อมูล"
                    tbody_sal+="</td>"
                    
                tbody_sal+="</tr>"
            }
            $('#tb_sal').html(tbody_sal);
        }

        function schedule_show() {
            var sched = <?php echo json_encode($schedule);?>;
            sched = JSON.parse(sched);
            tbody_sched = ""
            if(sched[0].id!=null){
                for(key in sched){
                    tbody_sched+="<tr>"
                    
                    tbody_sched+="<td>"
                    tbody_sched+=((parseInt(key) + (1)));
                    tbody_sched+="</td>"
                    
                    tbody_sched+="<td>"
                    tbody_sched+=sched[key].time_start + ' ถึง ' + sched[key].time_end
                    tbody_sched+="</td>"
                    
                    tbody_sched+="<td>"
                    tbody_sched+=to_date(sched[key].date_come)
                    tbody_sched+="</td>"
                    
                    tbody_sched+="<td>"
                    tbody_sched+=to_date(sched[key].date_app)
                    tbody_sched+="</td>"
                    
                    tbody_sched+="<td class=\"text-left\">"
                    tbody_sched+=sched[key].cname
                    tbody_sched+="</td>"
                    
                    tbody_sched+="<td class=\"text-left\">"
                    tbody_sched+=sched[key].ename
                    tbody_sched+="</td>"
                    
                    tbody_sched+="<td>"
                    tbody_sched+=sched[key].detail + " <br>("+ sched[key].status +")"
                    tbody_sched+="</td>"
                
                    tbody_sched+="</tr>"
                }
            }else{
                tbody_sched+="<tr>"
                    
                    tbody_sched+="<td colspan='5'>"
                    tbody_sched+="ไม่พบข้อมูล"
                    tbody_sched+="</td>"
                    
                tbody_sched+="</tr>"
            }
            $('#tb_sched').html(tbody_sched);
        }

        $(document).ready(function () {
            salary_show()
            schedule_show()
        });

        
    </script>

</body>
</html>