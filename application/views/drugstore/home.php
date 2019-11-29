<!DOCTYPE html>
<html lang="en">

<head>
  <title>คลินิกทันตกรรม</title>
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
  <link href="https://fonts.googleapis.com/css?family=Prompt&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>aos.css">
  <link rel="stylesheet" href="<?php echo $this->config->item('css');?>style.css">

</head>

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
                    <a href="#first-section" class="js-logo-clone">คลินิกทันตกรรม</a>
                    </div>
                </div>
                <!-- end logo -->
                <div class="main-nav d-none d-lg-block">
                    <nav class="site-navigation text-right text-md-center" role="navigation">
                    <ul id="ul-nav" class="site-menu js-clone-nav d-none d-lg-block">
                        <li class="active"><a href="#first-section"">หน้าแรก</a></li>
                        <li class="inactive"><a href="#store-section">ผลิตภัณฑ์</a></li>
                        <li class="inactive"><a href="#about-section">เกี่ยวกับเรา</a></li>
                        <li class="inactive"><a href="#contact-section">ติดต่อ</a></li>
                    </ul>
                    </nav>
                </div>

                <div class="icons">
                    <a href="#" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span></a>
                    <a href="#" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span
                        class="icon-menu"></span></a>
                </div>
            </div>
        </div>
    </div>
    <!-- end navbar -->

    <!-- First section -->
    <div id="first-section" class="site-blocks-cover" style="background-image: url('<?php echo base_url(); ?>/assets/images/bg_5.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
            <div class="site-block-cover-content text-center">
              <h2 class="sub-title">คิดจะพักคิดถึงเรา</h2>
              <h1>ยินดีต้อนรับ</h1>
              <p>
                <a href="<?php echo site_url('Drugstore/employee_show')?>" class="btn btn-ds-white px-5 py-3">ปรึกษาหมอ</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End first section -->

    <!-- store-section -->
    <div id="store-section" class="site-section">
        <div class="container">
            <div class="row">
                <div class="title-section col-12">
                    <h2 class="text-uppercase mb-3">
                        <img src="<?php echo $this->config->item('images');?>bag.png" style="width:70px; height:70px">    
                        ผลิตภัณฑ์
                    </h2>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                <div class="site-blocks-table">
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:10%">ลำดับ</th>
                                    <th class="text-center">ชื่อ</th>
                                    <th class="text-center">ประเภท</th></th>
                                    <th class="text-center">ราคา</th>
                                    <th class="text-center">คำอธิบาย</th>
                                </tr>
                            </thead>
                            <tbody id="tb_pro">

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            <div class="row mt-5">
            <div class="col-12 text-center">
                <a href="<?php echo site_url('Drugstore/product_show')?>" class="btn btn-green px-4 py-3">แสดงผลิตภัณฑ์ทั้งหมด</a>
            </div>
            </div>
            
        </div>
    </div>
    <!-- end store-section -->

    <!-- about-section -->
    <div id="about-section" class="site-section bg-image">
        <div class="container">
            <div class="row">
                <div class="title-section text-center col-12">
                    <h2 class="text-uppercase text-white mt-3 mb-3">เกี่ยวกับเรา</h2>
                </div>
            </div>

            <div class="row align-items-stretch">
            <div class="col-lg-6 mb-5 mb-lg-0">
                <a href="#store-section" class="banner-1 h-100 d-flex" style="background-image: url('<?php echo base_url(); ?>/assets/images/bg_1.jpg');">
                <div class="banner-1-inner align-self-center">
                    <h2>ผลิตภัณฑ์คุณภาพ</h2>
                    <p>คลินิกทันตกรรมของเราประกอบด้วยผลิตภัณฑ์ที่มีคุณภาพและผ่านมาตรฐาน
                    </p>
                </div>
                </a>
            </div>
            <div class="col-lg-6 mb-5 mb-lg-0">
                <a href="<?php echo site_url('Drugstore/employee_show')?>" class="banner-1 h-100 d-flex" style="background-image: url('<?php echo base_url(); ?>/assets/images/bg_2.jpg');">
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

  <script src="<?php echo $this->config->item('js');?>jquery-3.3.1.min.js"></script>
  <script src="<?php echo $this->config->item('js');?>jquery-ui.js"></script>
  <script src="<?php echo $this->config->item('js');?>popper.min.js"></script>
  <script src="<?php echo $this->config->item('js');?>bootstrap.min.js"></script>
  <script src="<?php echo $this->config->item('js');?>owl.carousel.min.js"></script>
  <script src="<?php echo $this->config->item('js');?>jquery.magnific-popup.min.js"></script>
  <script src="<?php echo $this->config->item('js');?>aos.js"></script>
  <script src="<?php echo $this->config->item('js');?>main.js"></script>

</body>
    <script>
        $(document).ready(function () {
            var pro = <?php echo json_encode($product); ?>;
            pro = JSON.parse(pro);
            tbody_pro = ""
            if(pro[0].id!=null){
                for(key in pro){
                    tbody_pro+="<tr>"
                    
                    tbody_pro+="<td>"
                    tbody_pro+=((parseInt(key) + (1)));
                    tbody_pro+="</td>"
                    
                    tbody_pro+="<td>"
                    tbody_pro+=pro[key].pdname
                    tbody_pro+="</td>"
                    
                    tbody_pro+="<td>"
                    tbody_pro+=pro[key].pftype
                    tbody_pro+="</td>"
                    
                    tbody_pro+="<td>"
                    tbody_pro+=pro[key].retail_price
                    tbody_pro+="</td>"
                    
                    tbody_pro+="<td class='text-left'>"
                    tbody_pro+=pro[key].pddescription
                    tbody_pro+="</td>"
                    
                    tbody_pro+="</tr>"
                }
            }else{
                tbody_pro+="<tr>"
                    
                    tbody_pro+="<td colspan='5'>"
                    tbody_pro+="ไม่พบข้อมูล"
                    tbody_pro+="</td>"
                    
                tbody_pro+="</tr>"
            }
            $('#tb_pro').html(tbody_pro);
        });
    </script>
</html>