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
<!-- Custom CSS -->
<style>
.form-control[readonly] {
	background-color: #fff;
}
</style>

<body>
	<%@include file="header.jsp"%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1>Thông tin khách hàng</h1>
				<form>
					<div class="mb-3">
						<strong for="name" class="form-label">Họ tên</strong> 
						<br>
							<label>${TenND}</label>
					</div>
					<div class="mb-3">
						<strong for="email" class="form-label">Email</strong> 
						<br>
						<label>${Email}</label>
					</div>
					<div class="mb-3">
						<strong for="password" class="form-label">Mật khẩu</strong>
						<br>
						<c:if test="${not empty Pass}">*******</c:if>
					</div>
					<div class="mb-3">
						<strong for="phone" class="form-label">Số điện thoại</strong>
						 <br>
						 <label>${Phone}</label>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<form action="DangXuatsvl" method="post" class="d-flex justify-content-center">
		<button type="submit" class="btn btn-outline-warning container">Đăng xuất</button>
		</form>
		<br>
	
	<%@include file="footer.jsp"%>
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