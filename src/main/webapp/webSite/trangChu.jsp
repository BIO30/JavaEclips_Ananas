<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Ananas</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<script
	src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.9"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<style>
.card img {
	transition: transform .5s;
}

.card img:hover {
	transform: scale(1.05);
}

p:hover {
	color: orange;
}
</style>
</head>

<body ng-app="myapp" ng-controller="myctrl">


	<div class="container">

		<div
			style="position: fixed; right: 0px; top: 232px; width: 40px; height: 75px; background-color: #ff5f17; padding: 10px 2px; color: #fff; font-family: NunitoSanExtraBold; font-size: 16px; text-align: center; cursor: pointer; z-index: 9999;"
			class="cartfixed hidden-xs hidden-sm" data-target="#shop_cart"
			data-toggle="collapse" aria-expanded="false">
			<span>0</span> <br> <img
				src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/icon_gio_hang.svg"
				alt="">
			<div></div>
		</div>
		<div class="social hidden-xs hidden-sm text-center"
			style="position: fixed; right: 0px; top: 330px; width: 40px; background-color: #666; padding: 8px; z-index: 9999;">
			<a href=""> <img
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

	</div>

	<%@include file="header.jsp"%>
	<div class="row">
		<div id="demo" class="carousel slide" data-bs-ride="carousel">

			<!-- Indicators/dots -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
					class="active"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>

			</div>

			<!-- The slideshow/carousel -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://ananas.vn/wp-content/uploads/LowHigh_Desktop-1920x1050.jpg"
						alt="anh1" class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img
						src="https://ananas.vn/wp-content/uploads/Hi-im-Mule_1920x1050-Desktop.jpg"
						alt="anh2" class="d-block w-100">
				</div>

			</div>

			<!-- Left and right controls/icons -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#demo" data-bs-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#demo" data-bs-slide="next">
				<span class="carousel-control-next-icon"></span>
			</button>
		</div>
	</div>
	<div class="container">
		<div class="row py-5">
			<div class="col-12 col-md-6 pb-3">
				<div class="card">


					<img
						src="https://ananas.vn/wp-content/uploads/IMG_9453_retouch-600x331.jpg"
						alt="">
					<div class="card-body">
						<h5 class="card-title">
							<a class="link-dark text-decoration-none " href="#"><strong>BÌNH
									MỚI RƯỢU "MỚI"</strong></a>
						</h5>
						<p class="card-text">Vẫn kế thừa vẻ tối giản, nguyên bản đã
							được định hướng bởi cái tên, Basas mới trở lại với những cải tiến
							đáng giá chắc chắn sẽ đem đến một trải nghiệm thú vị như hành
							trình chúng tôi làm ra nó.</p>

					</div>
				</div>

			</div>
			<div class=" col-12 col-md-6 pb-2">
				<div class="card">
					<img
						src="https://ananas.vn/wp-content/uploads/Banner_Sale-off-1.jpg"
						class="card-img-top" alt="sale">
					<div class="card-body">
						<h5 class="card-title">
							<a class="link-dark text-decoration-none " href="#"><STRONG>OUTLET
									SALE</STRONG></a>
						</h5>
						<p class="card-text">Danh mục những sản phẩm bán tại "giá tốt
							hơn" chỉ được bán kênh online - Online Only, chúng đã từng làm
							mưa làm gió một thời gian và hiện đang rơi vào tình trạng bể
							size, bể số.</p>

					</div>
				</div>
			</div>
		</div>


	</div>
	<h2 class="text-center p-3">
		<strong>DANH MỤC HÀNG</strong>
	</h2>


	<div class="container p-3">
		<div class="row pb-3 ">
			<div class="col-md-4">

				<div class="card">
					<img
						src="https://cdn.discordapp.com/attachments/856771759982116866/1087957944131395634/anh1.jpg"
						class="card-img-top" alt="...">

				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img
						src="https://cdn.discordapp.com/attachments/1088451548973109369/1088451721891692554/anh2.jpg"
						class="card-img-top" alt="...">

				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img
						src="https://cdn.discordapp.com/attachments/1088451548973109369/1088451722202066954/anh3.jpg"
						class="card-img-top" alt="...">

				</div>
			</div>
		</div>
	</div>

	<div class="row pb-5">
		<img src="https://ananas.vn/wp-content/uploads/Banner_Clothing.jpg"
			alt="">
	</div>
	<div class="container ">
		<div class="pb-4">
			<h2 class="text-center ">
				<STRONG>TIN TỨC & BÀI VIẾT</STRONG>
			</h2>
			<div class="row  pt-2">
				<div class="col-sm-6 col-md-6 col-lg-3 pb-3">
					<div class="card">
						<img
							src="https://ananas.vn/wp-content/uploads/kvngang_mobile_web-300x160.jpg"
							class="card-img-top" alt="11">
						<div class="card-body">
							<h5 class="card-title">GIẢI PHẨU GIÀY VULCANZED</h5>
							<br>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-outline
            ">Tìm hiểu...</a>
						</div>
					</div>
				</div>
				<div class=" col-sm-6 col-md-6 col-lg-3 pb-3">
					<div class="card">
						<img
							src="https://ananas.vn/wp-content/uploads/Mobile_Blog-1980s_0-300x160.jpg"
							class="card-img-top" alt="14">
						<div class="card-body">
							<h5 class="card-title">UNBASTAN CORLURAY PACK</h5>
							<br>

							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-outline
            ">Tìm hiểu...</a>
						</div>
					</div>
				</div>
				<div class=" col-sm-6 col-md-6 col-lg-3 pb-3">
					<div class="card">
						<img
							src="https://ananas.vn/wp-content/uploads/peeping_pattas01-300x160.jpg"
							class="card-img-top" alt="12">
						<div class="card-body">
							<h5 class="card-title">VINTASSAIGON OF 1980s</h5>
							<br>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-outline
            ">Tìm hiểu...</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-6  col-lg-3 pb-3">
					<div class="card">
						<img
							src="https://ananas.vn/wp-content/uploads/shoes-anatomy-thumbnail-300x160.jpg"
							class="card-img-top" alt="13">
						<div class="card-body">
							<h5 class="card-title">SNEAKER FEST OF VIETNAM</h5>
							<br>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-outline
            ">Tìm hiểu...</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>

		<div class="row bg-secondary py-5">
			<div class="col-md-3 text-center pb-2">

				<img
					src="https://ananas.vn/wp-content/themes/ananas/fe-assets/images/svg/Store.svg"
					class="img-fluid p-3 " alt="1"> </span> <a href="bando.html">
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






</body>

</html>