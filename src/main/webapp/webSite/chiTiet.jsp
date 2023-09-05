<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<script
	src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.9"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>

</head>

<body ng-app="myapp" ng-controller="myctrl">


	<div class="container">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<!-- <a class="navbar-brand" href="asm.html"><img style="width: 50%;" src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/Logo_Ananas_Header.svg" alt="logo"></a> -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="offcanvas" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="text-center ms-5">
					<a class="navbar-brand" href="trangChuServlet"><img
						style="width: 50%;" src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/Logo_Ananas_Header.svg"
						alt="logo"></a>

				</div>

				<div class="offcanvas offcanvas-start" id="navbarSupportedContent">
					<div class="offcanvas-header">
						<h5 class="offcanvas-title" id="offcanvasLabel">
							<strong class="text-center">Memu</strong>
						</h5>
						<button type="button" class="btn-close text-reset"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>

					<ul class="navbar-nav mx-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="sanPhamServlet"><strong class=" fs-4">SẢN
									PHẨM</strong></a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="sanPhamServlet" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <STRONG
								class=" fs-4">NAM</STRONG>
						</a>
							<ul class="dropdown-menu bg-secondary">
								<li><a class="dropdown-item" href="sanPhamServlet">Giày</a></li>
								<li><a class="dropdown-item" href="sanPhamServlet"> outlet sale</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="sanPhamServlet">Thời trang & phụ
										kiện</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="sanPhamServlet" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <STRONG
								class=" fs-4">NỮ</STRONG>
						</a>
							<ul class="dropdown-menu bg-secondary">
								<li><a class="dropdown-item" href="sanPhamServlet">Giày</a></li>
								<li><a class="dropdown-item" href="sanPhamServlet"> outlet sale</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="sanPhamServlet">Thời trang & phụ
										kiện</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="sanPhamServlet"><strong class=" fs-4">SALE
									OFF</strong></a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="sanPhamServlet"><strong class=" fs-4"><img
									src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/DiscoverYOU.svg" alt=""></strong></a></li>
					</ul>
					<div class=" d-sm-block d-md-none">
						<div class="input-group w-100">
							<span class="input-group-text" id="basic-addon1"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                    <path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z">
                                    </path>
                                </svg>
							</span> <input type="text" class="form-control"
								placeholder="Input group example"
								aria-label="Input group example" aria-describedby="basic-addon1">
						</div>
					</div>
				</div>
				<div class="p-2 d-none d-md-block">
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Tìm kiếm sản phẩm..." aria-label="Search">
						<button class="btn btn-outline-warning" type="submit">
							<strong>Search</strong>
						</button>
					</form>
				</div>
				<div class="ms-2">
					<a class="position-relative link-dark text-decoration-none" href="CartSVL" > <span
						class="fs-2"> <i class="bi bi-bag-fill"></i>
					</span> <small
						class="position-relative top-1 start-80 translate-middle badge rounded-pill bg-danger">
							{{Dem}} </small>

					</a>
				</div>
				<span> <!-- Button trigger modal -->
					<button type="button" data-bs-toggle="modal"
						data-bs-target="#exampleModal">
						<i class="bi bi-person-circle fs-3 "></i>
					</button> <!-- Modal -->
					<div class="modal fade " id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content ">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModalLabel">
										<STRONG class="text-primary fs-2">ĐĂNG NHẬP</STRONG>

									</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">

									<form name="frmform1">
										<div class="mb-3">
											<label class="form-label fs-5"><strong>Email
											</strong></label> <input type="email" ng-model="dnemail" name="txtemail"
												placeholder="Exemple@gmail.com" class="form-control"
												required> <small class=" text-danger"
												ng-show="frmform1.txtemail.$invalid">*Vui lòng nhập
												đúng Email</small>



										</div>
										<div class="mb-3">
											<label class="form-label fs-5"><strong>Password
											</strong></label> <input type="password" ng-model="dnpass" name="txtpass"
												placeholder="Mật khẩu" class="form-control" required
												minlength="8"> <small class=" text-danger"
												ng-show="frmform1.txtpass.$invalid">*mật khẩu phải
												từ 8 kí tự</small>
										</div>
										<div class="mb-3 form-check">
											<input type="checkbox" class="form-check-input"
												id="exampleCheck1"> <label class="form-check-label"
												for="exampleCheck1">nhớ mật khẩu ?</label>
										</div>
										<button type="submit" class="btn btn-primary">
											<strong>Đăng Nhập </strong>
										</button>
										<p>
											Bạn chưa có tài khoản đăng kí <a href="#"
												data-bs-toggle="modal" data-bs-target="#exampleModal02"><strong>Tại
													đây</strong></a>
										</p>
									</form>



								</div>

							</div>
						</div>
					</div>

					<div class="modal fade " id="exampleModal02" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content ">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModalLabel">
										<STRONG class="text-dark fs-2">ĐĂNG KÍ</STRONG>
										<div style="font-size: 14px;">Nhanh chóng và dễ dàng</div>
									</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">

									<form class="row g-3 " name="frmform">
										<div class="col-md-12">
											<label for="inputEmail4" class="form-label">Email :</label> <input
												type="email" class="form-control" ng-model="dkemail"
												name="txtemail" required placeholder="Exemple@gmail.com">
											<small class=" text-danger"
												ng-show="frmform.txtemail.$invalid">*Vui lòng nhập
												đúng Email</small>
										</div>
										<div class="col-md-12">
											<label class="form-label ">Password : </label> <input
												type="password" ng-model="dkpass" name="txtpass"
												placeholder="Mật khẩu" class="form-control" required
												minlength="8"> <small class=" text-danger"
												ng-show="frmform.txtpass.$invalid">*mật khẩu phải từ
												8 kí tự</small>
										</div>
										<div class="col-md-12">
											<label for="inputPassword4" class="form-label"> Xác
												nhận password :</label> <input type="password" ng-model="dnpass2"
												name="txtpass2" placeholder="Nhập lại mật khẩu"
												class="form-control" id="inputPassword4" required> <small
												class=" text-danger" ng-show="frmform.txtpass2.$invalid">*Vui
												lòng xác nhận đúng mật khẩu </small>
										</div>
										<div class="col-md-12">
											<label class="form-label">Số điện thoại :</label> <input
												type="text" ng-model="dksdt" name="txtdksdt"
												placeholder="Số điện thoại" class="form-control"
												minlength="10" maxlength="12" required> <small
												class=" text-danger" ng-show="frmform.txtdksdt.$invalid">*Số
												Điện thoại phải 10 số hoặc 12 só</small>
										</div>
									</form>
								</div>


								<div class="card-footer">
									<div class="row mx-1">
										<div class="mb-12">
											<h5 class=" " ng-show="frmform.$valid">Bạn đã hoành
												thành đăng kí !</h5>
										</div>
										<div class=" mb-2 ">
											<button type="submit" class="btn btn-primary">
												<strong> <a href="#"
													class="text-decoration-none link-light"
													data-bs-toggle="modal" data-bs-target="#exampleModal">
														Đăng Kí </a>
												</strong>
											</button>
										</div>

										<br> <br> <br>
									</div>





								</div>

							</div>
						</div>
					</div> <!-- scriptt angularjs --> <script>
						angular.module("myapp", []).controller("myctrl",
								function($scope) {

								});
					</script>

				</span>



			</div>
		</nav>
	</div>
	<div class="row bg-dark p-2 text-center text-light">
		<div id="carouselExampleInterval" class="carousel slide"
			data-bs-ride="carousel">
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
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<main>
		<div
			style="position: fixed; right: 0px; top: 232px; width: 40px; height: 75px; background-color: #ff5f17; padding: 10px 2px; color: #fff; font-family: NunitoSanExtraBold; font-size: 16px; text-align: center; cursor: pointer; z-index: 9999;"
			class="cartfixed hidden-xs hidden-sm" data-target="#shop_cart"
			data-toggle="collapse" aria-expanded="false">
			<span>0</span> <br> <img src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_gio_hang.svg" alt="">
			<div></div>
		</div>
		<div class="social hidden-xs hidden-sm text-center"
			style="position: fixed; right: 0px; top: 330px; width: 40px; background-color: #666; padding: 8px; z-index: 9999;">
			<a href=""> <img src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_facebook_2.svg" alt="">
			</a> <a href=""> <img src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_instagram_2.svg" alt="">
			</a> <a href=""> <img src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_youtube_2.svg" alt="">
			</a>
		</div>
		<div class="container">
			<div class="row p-5 ">
				<div class="col-sm-6">
					<div class="row">
						<img src="${hinh}" alt="" width="700">
					</div>
					<!--  
					<div class="col-sm-12">
						<div class="row pt-5">
							<Strong class="text-center">
								<h3>
									Sản phẩm Hot <img src="Images/fire.png" style="width: 30px;">
								</h3>
							</Strong>
							<hr>
							<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 pb-5">
								<div class="card text-center">
									<div class="tag"
										style="position: absolute; z-index: 85; width: 45%; text-align: center; color: #fff; font-family: GeometricExtraBold; font-size: 16px; font-style: italic; top: 10%; background-color: #004e9b; height: 2em; padding-top: 4px;">
										Limited</div>
									<a href="chitiet.html"> <img class="card-img-top"
										src="Images/pro3.jpg" alt="Card image"></a>
									<div class="card-body">
										<a href="chiTiet.jsp" style="text-decoration: none;"><strong
											class="card-title text-dark">Ananas "Copy" Store Bag
												001 - Black</strong></a>
										<p class="card-text">Black</p>
										<strong class="card-title">250,000 VNĐ</strong>
									</div>
								</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 pb-5">
								<div class="card text-center">
									<div class="tag"
										style="position: absolute; z-index: 85; width: 45%; text-align: center; color: #fff; font-family: GeometricExtraBold; font-size: 16px; font-style: italic; top: 10%; background-color: #004e9b; height: 2em; padding-top: 4px;">
										Limited</div>
									<a href="chiTiet.jsp"> <img class="card-img-top"
										src="Images/pro4.jpg" alt="Card image"></a>
									<div class="card-body">
										<a href="chiTiet.jsp" style="text-decoration: none;"><strong
											class="card-title text-dark">Track 6 Unnamed No.1 In
												C Minor - Low Top</strong></a>
										<p class="card-text">Black</p>
										<strong class="card-title">1.090.000 VNĐ</strong>
									</div>
								</div>
							</div>

						</div>
					</div>
-->

				</div>
				<div class="col-sm-6">
				<form action="Detail" method="post">
				<div class="row">
						<b class="fs-2">${tensp}</b>
						<div class="row mt-4">
							<div class="col-sm-6">
								<p>
									Mã sản phẩm:<b>${masp}</b>
									
								</p>
								
								<b>
									<p style="color: rgb(236, 126, 0);" class="fs-5">${giasp}
										VND</p>
								</b> <b class="fs-5">
									<p>SIZE</p>
								</b> <select class="form-select" aria-label="Default select example" name="Size">
									<option selected></option>
									<option value="40">40</option>
									<option value="41">41</option>
									<option value="42">42</option>
									<option value="43">43</option>
									<option value="44">44</option>
								</select>
								<input class="d-none" value="${masp}" name="idsp">
							</div>
							<div class="col-sm-6">
								<p>
									Tình trạng:<b>New Arrival</b>
								</p>
								<br>
								<br> <b class="fs-5">
									<p>SỐ LƯỢNG</p>
								</b> <select class="form-select" aria-label="Default select example" name="SL">
									<option selected></option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</div>
							<b class="fs-5">COLOR</b>
						</div>
						<hr>
						<div class="row mb-3" style="width: 100px; height: 50px;">
							<img src="Images/mau.png" alt="">
						</div>
						<hr>
						<div id="liveAlertPlaceholder"></div>
						
						
					
						<button  data-bs-toggle="modal" data-bs-target="#staticBackdrop"
							class="text-light fs-4 bg-dark"  ng-click="buy = buy + 1"
							style="width: 100%; height: 90px;" type="submit">
							<b >
							Thêm Vào Giỏ Hàng
							</b>
						</button>
						
				
						
						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop"
							data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="staticBackdropLabel">ANANAS</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">Thêm đơn hàng thành công !</div>
									<div class="modal-footer">
										<button ng-click="Dem = Dem + 1" type="button"
											class="btn btn-primary" data-bs-dismiss="modal">Đóng</button>
										<!-- <button type="button" class="btn btn-primary">Understood</button> -->
									</div>
								</div>
							</div>
						</div>
						<a>
						<button class="text-light mt-3"
							style="width: 100%; height: 90px; background-color: rgb(236, 126, 0);">
							<p class="fs-4">
								<b> Thanh Toán</b>
							</p>

						</button>
						</a>
						<b>
							<p class="mt-5 fs-3">Thông Tin Sản Phẩm</p>
						</b>
						<hr>
						<p>
							Gender: Unisex<br> Size run: 35 – 46<br> Upper:
							Leather/Suede<br> Outsole: ICY Rubber <br>
							<br> Có kèm theo 01 chiếc túi bạc bí ẩn (?) trong mỗi hộp
							giày.
						</p>
						<img src="Images/sizegiay.png" alt=""> <b>
							<p class="mt-5 fs-3">Quy Định Đổi sản phẩm</p>
						</b>
						<hr>
						<p>
							Đối với những sản phẩm giày và thời trang thuộc phiên bản giới
							hạn.<br> Vì nhiều lý do chúng tôi sẽ không áp dụng chính
							sách đổi<br> hàng. Vui lòng cân nhắc kỹ trước khi quyết định
							mua.
						</p>
						<b>
							<p class="mt-5 fs-3">Bảo Hành Thế Nào?</p>
						</b>
						<hr>
						<p>
							Mỗi đôi giày Ananas trước khi xuất xưởng đều trải qua nhiều khâu<br>
							kiểm tra. Tuy vậy, trong quá trình sử dụng, nếu nhận thấy các
							lỗi:<br> gãy đế, hở đế, đứt chỉ may,...trong thời gian 6
							tháng từ ngày mua<br> hàng, mong bạn sớm gửi sản phẩm về
							Ananas nhằm giúp chúng<br> tôi có cơ hội phục vụ bạn tốt
							hơn. Vui lòng gửi sản phẩm về bất kỳ <br>cửa hàng Ananas
							nào, hoặc gửi đến trung tâm bảo hành Ananas<br> ngay trong
							trung tâm TP.HCM trong giờ hành chính:<br> Địa chỉ: 170-172,
							Đinh Bộ Lĩnh, P.26 , Q.Bình Thạnh, TP.HCM<br> Hotline: 028
							2211 0067
						</p>
						<hr>
					</div>
				</form>
					
				</div>
			</div>

			<hr>
			<p class="text-center fs-3">
				<b>Sản Phẩm Liên Quan</b>
			</p>
			<div class="row">
				<div class="col-12 col-sm-6 col-md-3 mb-5 mt-3"
					ng-repeat="sp in products">
					<div class="card text-center">
						<a href="chitiet.html"> <img class="card-img-top"
							src="Images/{{sp.photo}}" alt="card-image"></a>
						<div class="card-body">
							<a href="chitiet.html" style="text-decoration: none;"><strong
								class="card-title text-dark">{{sp.brand}}</strong></a>
							<p class="card-text">{{sp.name}}</p>
							<strong class="card-title">{{sp.price}}</strong>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<footer>
		<div class="row bg-secondary py-5">
			<div class="col-md-3 text-center pb-2">
				<img src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/Store.svg" class="img-fluid p-3 "
					alt="1"> </span> <a href="bando.html">
					<button class="btn btn-outline-warning" type="submit">
						<strong>Tìm cửa hàng</strong>
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-arrow-right-square-fill"
							viewBox="0 0 16 16">
                            <path
								d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z" />
                        </svg>
					</button>
				</a>
			</div>
			<div class="col-md-9">
				<div class="row text-center">
					<div class="col-12 col-sm-6 col-md-4 ">
						<strong class="fs-4 text-light">SẢN PHẨM</strong> <br>
						<p class="text-light">
							Giày nam <br> Giày nữ <br> Thời trang & phụ kiện <br>
							sale off
						</p>
						<div>
							<p>
								<strong class="fs-4 text-light">ANANAS SOCICAL</strong><br>
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                    <path
										d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                </svg>
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                                    <path
										d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                                </svg>
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
                                    <path
										d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z" />
                                </svg>
							</p>
						</div>
					</div>
					<div class="  col-12 col-sm-6 col-md-4 ">
						<strong class="fs-4 text-light">LIÊN HỆ</strong> <br>
						<p class="text-light">
							Email góp ý <br> Hotline : 190012345
						</p>
						<div class="text-center pt-3   ">
							<iframe width="350" height="215"
								src="https://www.youtube.com/embed/vPJ83ctLJk8"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
                      gyroscope; picture-in-picture; web-share"
								allowfullscreen></iframe>
						</div>
					</div>
					<div class="col-12 col-sm-6 col-md-4 ">
						<strong class="fs-4 text-light">HỔ TRỢ</strong> <br>
						<p class="text-light">
							Bảo mật thông tin <br> Chính sách chung <br> Tra cứu
							đơn hàng
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<script src="js/chitiet.js"></script>

	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>

</body>

</html>