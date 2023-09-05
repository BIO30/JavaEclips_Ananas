<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.9"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>

</head>

<body ng-app="myapp" ng-controller="myctrl">


    <div class="container">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <!-- <a class="navbar-brand" href="asm.html"><img style="width: 50%;" src="Images/Screenshot 2023-02-02 172915.jpg" alt="logo"></a> -->
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="text-center ms-5">
                    <a class="navbar-brand" href="./webSite/trangChu.jsp"><img style="width: 50%;"
                            src="Images/Screenshot 2023-02-02 172915.jpg" alt="logo"></a>

                </div>

                <div class="offcanvas offcanvas-start" id="navbarSupportedContent">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasLabel"><strong class="text-center">Memu</strong></h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                    </div>

                    <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="sanPhamServlet"><strong class=" fs-4">SẢN
                                    PHẨM</strong></a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="sanPhamServlet" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                <STRONG class=" fs-4">NAM</STRONG>
                            </a>
                            <ul class="dropdown-menu bg-secondary">
                                <li><a class="dropdown-item" href="sanPhamServlet">Giày</a></li>
                                <li><a class="dropdown-item" href="sanPhamServlet"> outlet sale</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="sanPhamServlet">Thời trang & phụ kiện</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="sanPhamServlet" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                <STRONG class=" fs-4">NỮ</STRONG>
                            </a>
                            <ul class="dropdown-menu bg-secondary">
                                <li><a class="dropdown-item" href="sanPhamServlet">Giày</a></li>
                                <li><a class="dropdown-item" href="sanPhamServlet"> outlet sale</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="sanPhamServlet">Thời trang & phụ kiện</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="sanPhamServlet"><strong
                                    class=" fs-4">SALE
                                    OFF</strong></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="sanPhamServlet"><strong class=" fs-4"><img
                                        src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/DiscoverYOU.svg" alt=""></strong></a>
                        </li>
                    </ul>
                    <div class=" d-sm-block d-md-none">
                        <div class="input-group w-100">
                            <span class="input-group-text" id="basic-addon1">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-search" viewBox="0 0 16 16">
                                    <path
                                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z">
                                    </path>
                                </svg>
                            </span>
                            <input type="text" class="form-control" placeholder="Input group example"
                                aria-label="Input group example" aria-describedby="basic-addon1">
                        </div>
                    </div>
                </div>
                <div class="p-2 d-none d-md-block">
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Tìm kiếm sản phẩm..."
                            aria-label="Search">
                        <button class="btn btn-outline-warning" type="submit"><strong>Search</strong></button>
                    </form>
                </div>
                <div class="ms-2">
                    <a href="#" type="button" class="position-relative link-dark text-decoration-none">
                        <span class="fs-2 ">
                            <i class="bi bi-bag-fill"></i>
                        </span>
                        <small class="position-relative top-1 start-80 translate-middle badge rounded-pill bg-danger">
                            {{Dem}}
                        </small>

                    </a>
                </div>
                <span>

                    <!-- Button trigger modal -->
                    <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <i class="bi bi-person-circle fs-3 "></i>
                    </button>

                    <!-- Modal -->
                    <div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content ">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel"><STRONG
                                            class="text-primary fs-2">ĐĂNG
                                            NHẬP</STRONG>

                                    </h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <form name="frmform1">
                                        <div class="mb-3">
                                            <label class="form-label fs-5"><strong>Email </strong></label>
                                            <input type="email" ng-model="dnemail" name="txtemail"
                                                placeholder="Exemple@gmail.com" class="form-control" required>
                                            <small class=" text-danger" ng-show="frmform1.txtemail.$invalid">*Vui
                                                lòng nhập đúng
                                                Email</small>



                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label fs-5"><strong>Password </strong></label>
                                            <input type="password" ng-model="dnpass" name="txtpass"
                                                placeholder="Mật khẩu" class="form-control" required minlength="8">
                                            <small class=" text-danger" ng-show="frmform1.txtpass.$invalid">*mật
                                                khẩu phải từ 8 kí
                                                tự</small>
                                        </div>
                                        <div class="mb-3 form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">nhớ mật khẩu
                                                ?</label>
                                        </div>
                                        <button type="submit" class="btn btn-primary"><strong>Đăng Nhập
                                            </strong></button>
                                        <p>Bạn chưa có tài khoản đăng kí <a href="#" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal02"><strong>Tại đây</strong></a></p>
                                    </form>



                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="modal fade " id="exampleModal02" tabindex="-1" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content ">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel"><STRONG
                                            class="text-dark fs-2">ĐĂNG
                                            KÍ</STRONG>
                                        <div style="font-size: 14px;">Nhanh chóng và dễ dàng</div>
                                    </h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <form class="row g-3 " name="frmform">
                                        <div class="col-md-12">
                                            <label for="inputEmail4" class="form-label">Email :</label>
                                            <input type="email" class="form-control" ng-model="dkemail" name="txtemail"
                                                required placeholder="Exemple@gmail.com">
                                            <small class=" text-danger" ng-show="frmform.txtemail.$invalid">*Vui
                                                lòng nhập đúng
                                                Email</small>
                                        </div>
                                        <div class="col-md-12">
                                            <label class="form-label ">Password : </label>
                                            <input type="password" ng-model="dkpass" name="txtpass"
                                                placeholder="Mật khẩu" class="form-control" required minlength="8">
                                            <small class=" text-danger" ng-show="frmform.txtpass.$invalid">*mật khẩu
                                                phải từ 8 kí
                                                tự</small>
                                        </div>
                                        <div class="col-md-12">
                                            <label for="inputPassword4" class="form-label"> Xác nhận password
                                                :</label>
                                            <input type="password" ng-model="dnpass2" name="txtpass2"
                                                placeholder="Nhập lại mật khẩu" class="form-control" id="inputPassword4"
                                                required>
                                            <small class=" text-danger" ng-show="frmform.txtpass2.$invalid">*Vui
                                                lòng xác nhận đúng mật
                                                khẩu </small>
                                        </div>
                                        <div class="col-md-12">
                                            <label class="form-label">Số điện thoại :</label>
                                            <input type="text" ng-model="dksdt" name="txtdksdt"
                                                placeholder="Số điện thoại" class="form-control" minlength="10"
                                                maxlength="12" required>
                                            <small class=" text-danger" ng-show="frmform.txtdksdt.$invalid">*Số Điện
                                                thoại phải 10 số
                                                hoặc 12 só</small>
                                        </div>
                                    </form>
                                </div>


                                <div class="card-footer">
                                    <div class="row mx-1">
                                        <div class="mb-12">
                                            <h5 class=" " ng-show="frmform.$valid">Bạn đã hoành thành đăng kí !</h5>
                                        </div>
                                        <div class=" mb-2 ">
                                            <button type="submit" class="btn btn-primary">
                                                <strong>
                                                    <a href="#" class="text-decoration-none link-light"
                                                        data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                        Đăng Kí
                                                    </a>
                                                </strong>
                                            </button>
                                        </div>

                                        <br> <br> <br>
                                    </div>





                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- scriptt angularjs -->
                    <script>
                        angular.module("myapp", []).controller("myctrl", function ($scope) {



                        });
                    </script>

                </span>



            </div>
        </nav>
    </div>
    <div class="row bg-dark p-2 text-center text-light">
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner fst-italic">
                <div class="carousel-item active" data-bs-interval="10000">
                    <strong>HÀNG 2 TUẦN NHẬN ĐỔI - GIÀY NỮA NĂM BẢO HÀNH</strong>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <strong>BUY 2 GET 10% OFF - Áp dụng với tất cả BASIC TEE</strong>
                </div>
                <div class="carousel-item">
                    <strong>FREE SHIP toàn quốc với hóa đơn từ 800K !</strong>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <main>
        <div class="container" style="margin-top: 50px; margin-bottom: 100px;">
            <div>
                <h6 class=" m-2  " style="padding-left: 50px; height: 40px; padding-top: 9px; background-color: gainsboro;">
                    <strong><a href="GioHangSVL" class="text-decoration-none text-secondary">GIỎ HÀNG </a> <i class="bi bi-chevron-right"></i>
                        <a href="tiepTucThanhToanServlet" class="text-decoration-none text-secondary">TIẾP TỤC THANH TOÁN </a> 
                    </strong>
                </h6><br>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <h3 class=" mt-4 text-light " 
                        style="padding-left: 50px; height: 40px; padding-top: 3px; background-color: slategray;"><strong>THÔNG TIN ĐƠN HÀNG</strong>
                    </h3>
                    <div class="m-5">
                        <form action="">
                            <input type="text" class="form-control" id="exampleFormControlInput1"
                                placeholder="Vui lòng nhập họ và tên"><br>
                            <input type="number" class="form-control" id="exampleFormControlInput2"
                                placeholder="Vui lòng nhập số điện thoại"><br>
                            <input type="email" class="form-control" id="exampleFormControlInput3"
                                placeholder="Vui lòng nhập Email "><br>
                            <input type="text" class="form-control" id="exampleFormControlInput3"
                                placeholder="Vui lòng nhập địa chỉ"><br>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 form-group location has-success"
                                id="list-city">
                                <select class="form-control" id="customerCity" name="customerCity">
                                    <option value="0">Tỉnh/ Thành Phố</option>
                                    <option value="5646">An Giang</option>
                                    <option value="5986">Bà Rịa – Vũng Tàu</option>
                                    <option value="5768">Bắc Giang</option>
                                    <option value="6189">Bắc Kạn</option>
                                    <option value="6394">Bạc Liêu</option>
                                    <option value="6224">Bắc Ninh</option>
                                    <option value="6034">Bến Tre</option>
                                    <option value="5779">Bình Định</option>
                                    <option value="5943">Bình Dương</option>
                                    <option value="5791">Bình Phước</option>
                                    <option value="5803">Bình Thuận</option>
                                    <option value="5814">Cà Mau</option>
                                    <option value="6089">Cần Thơ</option>
                                    <option value="6198">Cao Bằng</option>
                                    <option value="6012">Đà Nẵng</option>
                                    <option value="5824">Đắk Lắk</option>
                                    <option value="5840">Đắk Nông</option>
                                    <option value="6341">Điện Biên</option>
                                    <option value="5931">Đồng Nai</option>
                                    <option value="6063">Đồng Tháp</option>
                                    <option value="5849">Gia Lai</option>
                                    <option value="6298">Hà Giang</option>
                                    <option value="5867">Hà Nam</option>
                                    <option value="5953">Hà Nội</option>
                                    <option value="5874">Hà Tĩnh</option>
                                    <option value="5888">Hải Dương</option>
                                    <option value="6119">Hải Phòng</option>
                                    <option value="5901">Hậu Giang</option>
                                    <option value="5618">Hồ Chí Minh</option>
                                    <option value="6243">Hòa Bình</option>
                                    <option value="5910">Hưng Yên</option>
                                    <option value="5921">Khánh Hòa</option>
                                    <option value="5658">Kiên Giang</option>
                                    <option value="6365">Kon Tum</option>
                                    <option value="6332">Lai Châu</option>
                                    <option value="5674">Lâm Đồng</option>
                                    <option value="6212">Lạng Sơn</option>
                                    <option value="6384">Lào Cai</option>
                                    <option value="5996">Long An</option>
                                    <option value="5687">Nam Định</option>
                                    <option value="5698">Nghệ An</option>
                                    <option value="6270">Ninh Bình</option>
                                    <option value="6376">Ninh Thuận</option>
                                    <option value="6318">Phú Thọ</option>
                                    <option value="5720">Phú Yên</option>
                                    <option value="6135">Quảng Bình</option>
                                    <option value="6170">Quảng Nam</option>
                                    <option value="6155">Quảng Ngãi</option>
                                    <option value="6255">Quảng Ninh</option>
                                    <option value="6144">Quảng Trị</option>
                                    <option value="6077">Sóc Trăng</option>
                                    <option value="6352">Sơn La</option>
                                    <option value="5730">Tây Ninh</option>
                                    <option value="6279">Thái Bình</option>
                                    <option value="6288">Thái Nguyên</option>
                                    <option value="5740">Thanh Hóa</option>
                                    <option value="6109">Thừa Thiên – Huế</option>
                                    <option value="6022">Tiền Giang</option>
                                    <option value="6044">Trà Vinh</option>
                                    <option value="6310">Tuyên Quang</option>
                                    <option value="6054">Vĩnh Long</option>
                                    <option value="6099">Vĩnh Phúc</option>
                                    <option value="6233">Yên Bái</option>
                                </select><br>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 form-group location">
                                        <select class="form-control" id="customerDistrict" name="customerDistrict">
                                            <option value="0">Quận/ Huyện</option>
                                            <option value="6229">Huyện Cai Lậy</option>
                                            <option value="6232">Quận 12</option>
                                            <option value="1">Quận 11</option>
                                            <option value="2">Quận 10</option>
                                            <option value="3">Quận 9</option>
                                            <option value="4">Quận 8</option>
                                            <option value="5">Quận 7</option>
                                            <option value="6">Quận 6</option>
                                            <option value="6">Quận 5</option>
                                            <option value="7">Quận 4</option>
                                            <option value="8">Quận 3</option>
                                            <option value="9">Quận 2</option>
                                            <option value="10">Quận 1</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 form-group location">
                                        <select class="form-control" id="customerWard" name="customerWard">
                                            <option value="0">Phường/ Xã</option>
                                        </select>
                                    </div>
                                </div><br>
                                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 form-group">
                                    <div class="ck1">
                                        <input type="checkbox" id="cb2" name="isNotification">
                                        <label for="cb2"></label>
                                        Cập nhật các thông tin mới nhất về chương trình từ Ananas
                                    </div><br>
                                </div>



                            </div>
                        </form>
                    </div>
                    <h3 class=" m-2 text-light" style="padding-left: 50px; height: 40px; padding-top: 3px; background-color: slategray;">
                        <strong>PHƯƠNG THỨC GIAO
                            HÀNG</strong>
                    </h3><br>
                    <div class="m-4">

                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-group">
                            <div class="ck1">
                                <input type="checkbox" id="cb3" name="shippingType" value="normal" checked="">
                                <label for="cb3"></label>
                                Tốc độ tiêu chuẩn (từ 2 - 5 ngày làm việc)
                            </div>

                        </div>

                    </div>
                    <h3 class=" m-2 text-light" style="padding-left: 50px; height: 40px; padding-top: 3px; background-color: slategray;">
                        <strong>PHƯƠNG THỨC THANH TOÁN
                        </strong>
                    </h3><br>
                    <div class="m-4">


                        <div class="form-check col-xs-12 col-sm-12 col-md-8 col-lg-8">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">

                                Thanh toán trực tiếp khi giao hàng <img class="" src="">

                            </label>
                        </div><br>
                        <div class="form-check col-xs-12 col-sm-12 col-md-8 col-lg-8">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"
                                checked>
                            <label class="form-check-label" for="flexRadioDefault2">

                                Thanh toán bằng thẻ quốc tế và thẻ nội địa (ATM) <img class="" src="">

                            </label>
                        </div> <br>
                        <div class="form-check col-xs-12 col-sm-12 col-md-8 col-lg-8">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3"
                                checked>
                            <label class="form-check-label" for="flexRadioDefault3">

                                Thanh toán bằng Ví MOMO <img class="" src="">

                            </label>
                        </div> <br>


                    </div>
                </div>
                <div class="col-sm-4">

                    <div class="col-md-12 col-sm-6 border border-1 rounded m-4 p-4">
                        <h4 class="p-2"><strong >Đơn Hàng</strong></h4>
                        <p class="bg-dark " style="height: 2px;"></p>
                        <div class="row">
                            <p><strong>Sản phẩm :  <b>TRACK 6 I.S.E.E - PURE WHITE/ICY BLUE</b></strong></p>
                            <p><strong>Hóa đơn : <b style="margin-left:60px;">1.490.000 VND</b></strong></p>
                            <p><strong>Giảm giá : <b style="margin-left:60px;">0 VND</b> </strong></p>
                            <hr>
                            <br>
                            <h5><strong>TẠM TÍNH <b style="margin-left:50px;">1.490.000 VND</b></strong></h5>
                        </div>
                       
                        <a href="thanhToanPassSVL">
                            <button   type="button" class="btn btn-cart btn-complete-detail text-light mt-4  "   
                            style="width: 100%; height: 60px;background-color:rgb(236, 126, 0);"> <p class="fs-5 pt-2"><b>HOÀN TẤT TANH TOÁN</b>
                            </button>
                        </a>

                          
                        
                    </div>
                    
                </div>
            </div>
        </div>

    </main>

    <footer>
        <div class="row bg-secondary py-5">
            <div class="col-md-3 text-center pb-2">
                <img src="Images/Logo_Ananas_newblack03.png" class="img-fluid p-3 " alt="1">
                </span>
                <a href="bando.html">
                    <button class="btn btn-outline-warning" type="submit"><strong>Tìm cửa hàng</strong>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
                            <path
                                d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z" />
                        </svg>
                    </button>
                </a>
            </div>
            <div class="col-md-9">
                <div class="row text-center">
                    <div class="col-12 col-sm-6 col-md-4 "><strong class="fs-4 text-light">SẢN PHẨM</strong>
                        <br>
                        <p class="text-light">
                            Giày nam
                            <br>
                            Giày nữ
                            <br>
                            Thời trang & phụ kiện
                            <br>
                            sale off
                        </p>
                        <div>
                            <p><strong class="fs-4 text-light">ANANAS SOCICAL</strong><br>
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                    class="bi bi-facebook" viewBox="0 0 16 16">
                                    <path
                                        d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                    class="bi bi-instagram" viewBox="0 0 16 16">
                                    <path
                                        d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                    class="bi bi-youtube" viewBox="0 0 16 16">
                                    <path
                                        d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z" />
                                </svg>
                            </p>
                        </div>
                    </div>
                    <div class="  col-12 col-sm-6 col-md-4 "><strong class="fs-4 text-light">LIÊN HỆ</strong>
                        <br>
                        <p class="text-light">
                            Email góp ý
                            <br>
                            Hotline :
                            190012345
                        </p>
                        <div class="text-center pt-3   ">
                            <iframe width="350" height="215" src="https://www.youtube.com/embed/vPJ83ctLJk8"
                                title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
                      gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 ">
                        <strong class="fs-4 text-light">HỔ TRỢ</strong>
                        <br>
                        <p class="text-light">
                            Bảo mật thông tin
                            <br>
                            Chính sách chung
                            <br>
                            Tra cứu đơn hàng
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="js/chitiet.js"></script>

    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>

</body>

</html>