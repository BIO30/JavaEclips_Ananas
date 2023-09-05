<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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


	<%@include file="header.jsp"%>
	<main>
		<div
			style="position: fixed; right: 0px; top: 232px; width: 40px; height: 75px; background-color: #ff5f17; padding: 10px 2px; color: #fff; font-family: NunitoSanExtraBold; font-size: 16px; text-align: center; cursor: pointer; z-index: 9999;"
			class="cartfixed hidden-xs hidden-sm" data-target="#shop_cart"
			data-toggle="collapse" aria-expanded="false">
			<span>0</span> <br> <img src="Images/icon_gio_hang.svg" alt="">
			<div></div>
		</div>
		<div class="social hidden-xs hidden-sm text-center"
			style="position: fixed; right: 0px; top: 330px; width: 40px; background-color: #666; padding: 8px; z-index: 9999;">
			<a href="https://www.facebook.com/Ananas.vietnam/"> <img
				src="Images/icon_facebook_2.svg" alt="">
			</a> <a href="https://www.instagram.com/ananasvn/"> <img
				src="Images/icon_instagram_2.svg" alt="">
			</a> <a href="https://www.youtube.com/discoveryou"> <img
				src="Images/icon_youtube_2.svg" alt="">
			</a>
		</div>

		<main>



			<div class="container "
				style="margin-top: 50px; margin-bottom: 100px;">
				<div>
					<h6 class=" m-2 text-light"
						style="padding-left: 50px; height: 40px; padding-top: 9px; background-color: gainsboro;">
						<strong><a href="GioHangSVL"
							class="text-decoration-none text-secondary">GIỎ HÀNG </a> </strong>
					</h6>
					<br>
				</div>

				<div class="row">



					<%@include file="SPtronggiohang.jsp"%>




					<div class="col-md-3 col-sm-12 border border-1 rounded m-3 p-2">

						<h4 class="p-2">
							<strong>Đơn Hàng</strong>
						</h4>
						<p class="bg-dark " style="height: 2px;"></p>
						<div class="row">
							<p>
								<strong>Sản phẩm : <b>TRACK 6 I.S.E.E - PURE
										WHITE/ICY BLUE</b></strong>
							</p>
							<p>
								<strong>Hóa đơn : <b style="margin-left: 60px;">1.490.000
										VND</b></strong>
							</p>
							<p>
								<strong>Giảm giá : <b style="margin-left: 60px;">0
										VND</b>
								</strong>
							</p>
							<hr>
							<br>
							<h5>
								<strong>TẠM TÍNH <b style="margin-left: 50px;">1.490.000
										VND</b></strong>
							</h5>
						</div>

						<a href="tieptucthanhtoanSVL">

							<button type="button"
								class="btn btn-cart btn-complete-detail text-light mt-4  "
								style="width: 100%; height: 60px; background-color: rgb(236, 126, 0);">
								<p class="fs-5 pt-2">
									<b>TIẾP TỤC THANH TOÁN</b>
							</button>
						</a>



					</div>
				</div>


			</div>


			</div>






		</main>



	</main>

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