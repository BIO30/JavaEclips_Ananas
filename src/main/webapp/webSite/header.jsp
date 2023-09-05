<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<!-- <link rel="stylesheet" href="style.css"> -->


<script
	src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.9"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>

</head>
<body>
	<header>

		<!-- place navbar here -->
		<div class="container">
			<nav class="navbar navbar-expand-lg bg-body-tertiary">
				<div class="container-fluid">
					<!-- <a class="navbar-brand" href="asm.html"><img style="width: 50%;" src="Images/Screenshot 2023-02-02 172915.jpg" alt="logo"></a> -->
					<button class="navbar-toggler" type="button"
						data-bs-toggle="offcanvas"
						data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="text-center ms-5">
						<a class="navbar-brand" href="trangChuServlet"><img
							style="width: 50%;"
							src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/Logo_Ananas_Header.svg"
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
								aria-current="page" href="sanPhamServlet"><strong
									class=" fs-4">SẢN PHẨM</strong></a></li>

							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="sanPhamServlet"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									<STRONG class=" fs-4">NAM</STRONG>
							</a>
								<ul class="dropdown-menu bg-secondary">
									<li><a class="dropdown-item" href="sanPhamServlet">Giày</a></li>
									<li><a class="dropdown-item" href="sanPhamServlet">
											outlet sale</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="sanPhamServlet">Thời
											trang & phụ kiện</a></li>
								</ul></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="sanPhamServlet"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									<STRONG class=" fs-4">NỮ</STRONG>
							</a>
								<ul class="dropdown-menu bg-secondary">
									<li><a class="dropdown-item" href="sanPhamServlet">Giày</a></li>
									<li><a class="dropdown-item" href="sanPhamServlet">
											outlet sale</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="sanPhamServlet">Thời
											trang & phụ kiện</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="sanPhamServlet"><strong
									class=" fs-4">SALE OFF</strong></a></li>
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="sanPhamServlet"><strong
									class=" fs-4"><img
										src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/DiscoverYOU.svg"
										alt=""></strong></a></li>
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
									aria-label="Input group example"
									aria-describedby="basic-addon1">
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
						<a href="CartSVL" type="button"
							class="position-relative link-dark text-decoration-none"> <span
							class="fs-2 "> <i class="bi bi-bag-fill"></i>
						</span> <span
							class="position-relative top-1 start-80
								translate-middle badge rounded-pill bg-danger">
								0 </span>
						</a> <span ng-app="myapp"> <!-- Button trigger modal --> 
						<c:choose>
								<c:when test="${sessionScope.checklog == null }">
									<button type="button" data-bs-toggle="modal"
										data-bs-target="#exampleModal">
										<i class="bi bi-person-circle fs-3 "></i>
									</button>

									<%@include file="Login.jsp"%>

									<div class="modal fade " id="exampleModal02" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content ">
												<div class="modal-header">
													<h1 class="modal-title fs-5" id="exampleModalLabel">
														<STRONG class="text-dark fs-2">ĐĂNG KÍ</STRONG>
														<div style="font-size: 14px;">Nhanh chóng và dễ dàng</div>
													</h1>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">

													<form class="row g-3 " name="frmform">
														<div class="col-md-12">
															<label for="inputEmail4" class="form-label">Email
																:</label> <input type="email" class="form-control"
																ng-model="dkemail" name="txtemail" required
																placeholder="Exemple@gmail.com"> <small
																class=" text-danger" ng-show="frmform.txtemail.$invalid">*Vui
																lòng nhập đúng Email</small>
														</div>
														<div class="col-md-12">
															<label class="form-label ">Password : </label> <input
																type="password" ng-model="dkpass" name="txtpass"
																placeholder="Mật khẩu" class="form-control" required
																minlength="8"> <small class=" text-danger"
																ng-show="frmform.txtpass.$invalid">*mật khẩu
																phải từ 8 kí tự</small>
														</div>
														<div class="col-md-12">
															<label for="inputPassword4" class="form-label">
																Xác nhận password :</label> <input type="password"
																ng-model="dnpass2" name="txtpass2"
																placeholder="Nhập lại mật khẩu" class="form-control"
																id="inputPassword4" required> <small
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
									</div>


								</c:when>
								<c:when test="${sessionScope.checklog == 1}">
									<a href="adminServlet">
										<button type="button">
											<i class="bi bi-person-circle fs-3 "></i>
									</a>

									</button>
								</c:when>
								<c:when test="${sessionScope.checklog == 0}">
									<a href="userServlet">
										<button type="button">
											<i class="bi bi-person-circle fs-3 "></i>
									</a>
								</c:when>
							</c:choose>
						</span>
					</div>





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
		<div
			style="position: fixed; right: 0px; top: 232px; width: 40px; height: 75px; background-color: #ff5f17; padding: 10px 2px; color: #fff; font-family: NunitoSanExtraBold; font-size: 16px; text-align: center; cursor: pointer; z-index: 9999;"
			class="cartfixed hidden-xs hidden-sm" data-target="#shop_cart"
			data-toggle="collapse" aria-expanded="false">
			<span>0</span> <br> <img
				src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_gio_hang.svg"
				alt="">

		</div>
		<div class="social hidden-xs hidden-sm text-center"
			style="position: fixed; right: 0px; top: 330px; width: 40px; background-color: #666; padding: 8px; z-index: 9999;">
			<a href="https://www.facebook.com/Ananas.vietnam/"> <img
				src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_facebook_2.svg"
				alt="">
			</a> <a href=""> <img
				src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_instagram_2.svg"
				alt="">
			</a> <a href=""> <img
				src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_youtube_2.svg"
				alt="">
			</a>
		</div>
	</header>
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