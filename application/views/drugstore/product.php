<head>
  <title>คลินิกทันตกรรม - ผลิตภัณฑ์</title>
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
                    <a href="<?php echo site_url('Drugstore');?>" class="js-logo-clone">คลินิกทันตกรรม</a>
                    </div>
                </div>
                <!-- end logo -->
                <div class="main-nav d-none d-lg-block">
                    <nav class="site-navigation text-right text-md-center" role="navigation">
                    <ul id="ul-nav" class="site-menu js-clone-nav d-none d-lg-block">
                        <li class="inactive"><a href="<?php echo site_url('Drugstore');?>">หน้าแรก</a></li>
                        <li class="active"><a href="#store-section">ผลิตภัณฑ์</a></li>
                        <li class="inactive cart_nav"><a href="#cart-section">ตะกร้าสินค้า</a></li>
                        <li  class="inactive"><a href="#about-section">เกี่ยวกับเรา</a></li>
                        <li  class="inactive"><a href="#contact-section">ติดต่อ</a></li>
                    </ul>
                    </nav>
                </div>

                <div class="icons">
                    <a href="#" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span></a>
                    <a id="cart" href="#cart-section" class="icons-btn d-inline-block bag">
                      <span class="icon-shopping-cart"></span>
                      <span class="number"></span>
                    </a>
                    <a href="#" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none">
                        <span class="icon-menu"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- end navbar -->

    <!-- customer-section -->
    <div id="customer-section" class="mt-1 site-section pb-0">
        <div class="container">
            <div class="row">
                <div class="title-section col-12">
                    <h2 class="text-uppercase">
                    <img src="<?php echo $this->config->item('images');?>greeting.png" style="width:70px; height:70px">
                    สวัสดีค่ะ, คุณ <?php echo $cus->cname;?>
                </h2>
                </div>
            </div>

            <div class="row px-5 mt-3">
                <p class="sub-title">
                    ที่อยู่:  <?php echo $cus->caddress;?><br>
                    เบอร์:  <?php echo $cus->tel;?><br>
                </p>
            </div>            
        </div>
    </div>
    <!-- end store-section -->

    <!-- store-section -->
    <div id="store-section" class="mt-1 site-section">
        <div class="container">
            <div class="row">
            <div class="title-section col-12">
                <h2 class="text-uppercase">
                    <img src="<?php echo $this->config->item('images');?>bag.png" style="width:70px; height:70px">    
                    ผลิตภัณฑ์ทั้งหมด
                </h2>
                <h5 class="px-4 sub-title">จำหน่วยโดย <?php echo $emp->emp_name; ?></h5>
            </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                <div class="site-blocks-table">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:10%">ลำดับ</th>
                                    <th class="text-center">ชื่อ</th>
                                    <th class="text-center">ประเภท</th></th>
                                    <th class="text-center">ราคา</th>
                                    <th class="text-center">คำอธิบาย</th>
                                    <th class="text-center"></th>
                                </tr>
                            </thead>
                            <tbody id="tb_pro">
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>            
        </div>
    </div>
    <!-- end store-section -->

    <div class="site-section bg-image"></div>

    <!-- cart-section -->
    <div id="cart-section" class="site-section">
      <div class="container">
        <div class="row">
            <div class="title-section col-12">
                <h2 class="text-uppercase">
                    <img src="<?php echo $this->config->item('images');?>shopping-cart.png" style="width:70px; height:70px">
                    ตะกร้าสินค้า
                </h2>
            </div>
        </div>

        <div class="row mb-5">
            <form class="col-md-12" method="post">
                <div class="site-blocks-table">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="text-center" style="width:10%">ลำดับ</th>
                                <th class="text-center">ชื่อ</th>
                                <th class="text-center">ราคา</th>
                                <th class="text-center">ยกเลิก</th>
                            </tr>
                        </thead>
                        <tbody id="tb_cart">
                            
                        </tbody>
                    </table>
                </div>
            </form>
        </div>

        <div id="hidden"></div>
        <div id="hidden_product"></div>
        
        <!-- <div class="row">
            <div class="col-md-12">
                <div class="row justify-content-end">
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-12 text-right border-bottom mb-5">
                                <h3 class="text-black h4 text-uppercase">สินค้าในตะกร้า</h3>
                            </div>
                        </div>
                        <div class="row mb-5">
                            <div class="col-md-6">
                                <span class="text-black">รวมทั้งหมด</span>
                            </div>
                            <div class="col-md-6 text-right">
                                <strong class="text-black" id="totalPrice">0</strong><strong> บาท</strong>
                            </div>
                        </div>
            
                        <div class="row">
                            <div class="col-md-12">
                                <button class="btn btn-green btn-lg btn-block" onclick="bill()">ชำระเงิน</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
      </div>
    </div>
    <!-- end cart-section -->

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
        var productId = []
        var pd_index=1
        var numOfProduct = 0;
        var pro = <?php echo json_encode($product); ?>;
        pro = JSON.parse(pro);
        total=0

        $(document).ready(function () {
            ///////////////////////////////////////////////////////////////////////
            $('.number').html(numOfProduct);
            add_product()
            ///////////////////////////////////////////////////////////////////////
            hidden = ""
            if(pro[0].id!=null){
                for(key in pro){
                    name = 'name_'+key;
                    id = 'id_'+key;
                    price = 'price_'+key;
                    hidden+="<input type=\"hidden\" id=\""+name+"\" value=\""+pro[key].pdname+"\" >";
                    hidden+="<input type=\"hidden\" id=\""+id+"\" value=\""+pro[key].id+"\" >";
                    hidden+="<input type=\"hidden\" id=\""+price+"\" value=\""+pro[key].retail_price+"\" >";
                }
            }
            $('#hidden').append(hidden);
        });

        function add_product() {
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
                    tbody_pro+=pro[key].retail_price + " บาท"
                    tbody_pro+="</td>"
                    
                    tbody_pro+="<td class='text-left'>"
                    tbody_pro+=pro[key].pddescription
                    tbody_pro+="</td>"

                    tbody_pro+="<td>"
                    tbody_pro+="<button onclick='add_cart(\""+pro[key].id+"\", \""+key+"\")' class='btn btn-warning'> ใส่ตะกร้า </button>"
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
        }

        // resetNums index tr 
        function resetNums(){
            $('#tb_cart tr').each((index, element) => {
                $(element).children('.index').text(index + 1)
            })
        }

        // delete tr 
        function delete_item(element, key){
            element.closest('tr').remove()
            pd_price = $('#price_'+key).val();
            pd_id = $('#id_'+key).val();
            total-=parseInt(pd_price)

            for( var i = 0; i < productId.length; i++){ 
                if ( productId[i] === pd_id) {
                    productId.splice(i, 1); 
                    i--;
                }
            }
            
            show_total() 
            resetNums()
            $('.number').html(--numOfProduct);
        }

        // function bill(){
        //     totalAmount = 0
        //     $('#tb_cart tr').each((index, element) => {
        //         totalAmount = (index + 1)
        //     })
        //     // console.log(totalPrice)
        //     date = new Date()
        //     emp_id = '<?php echo $emp->id;?>';
        //     cus_id = '<?php echo $cus->id;?>';
        //     // console.log(productId)

        //     url="<?php echo site_url('Drugstore/add_bill_customer');?>"

        //     $.ajax({
        //         type: "post",
        //         url: url,
        //         data: {
        //             emp_id: emp_id
        //             ,cus_id: cus_id
        //             ,date: date
        //             ,payment_type: 'จ่ายเงินสด'
        //             ,totalAmount: totalAmount
        //             ,totalPrice: totalPrice
        //             ,productId: productId
        //         },
        //         dataType: "json",
        //         success: function (response) {
        //             console.log("Success")
        //         },
        //         error: function (response) {
        //             console.log("Error")
        //         }
        //     });
        // }

        function add_cart(id, key) {

            $('.number').html(++numOfProduct);
            pd_name = $('#name_'+key).val();
            pd_id = $('#id_'+key).val();
            pd_price = $('#price_'+key).val();

            total+=parseInt(pd_price)
            productId.push(pd_id)

            tb_cart = ""
            tb_cart+="<tr>"
                    
            tb_cart+="<td class='index'>"
            tb_cart+="</td>"

            tb_cart+="<td>"
            tb_cart+="<h2 class=\"h5 text-black\">"+pd_name+"</h2>"
            tb_cart+="</td>"

            tb_cart+="<td>"
            tb_cart+=pd_price + ' บาท'
            tb_cart+="</td>"

            tb_cart+="<td class='text-center'>"
            tb_cart+="<a class=\"text-white btn btn-danger\" onclick='delete_item(this,"+key+")'>X</a>"
            tb_cart+="</td>"

            tb_cart+="</tr>"

            $('#tb_cart').append(tb_cart);
            show_total()
            resetNums()
        }

        function show_total() {
            $('#totalPrice').html(total);
        }
    </script>
