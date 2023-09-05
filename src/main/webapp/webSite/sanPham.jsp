<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<title>Ananas</title>
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
<!-- <link rel="stylesheet" href="style.css"> -->


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
.menu a:hover {
	color: orange  !important;
}
</style>

</head>

<body ng-app="myapp" ng-controller="myctrl">
<c:if test="${not empty sessionScope.result}">
        <div class="alert alert-warning alert-dismissible fade show text-center">
            <strong>Đăng nhập thất bại !!!!!</strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>
	<%@include file="header.jsp"%>
	<main>
		<div class="container mt-5">
			<div class="  row ">
				<%@include file="menu.jsp"%>
				<div class="col-sm-9">
					<div class="row">
						<div class="col-sm-12 pb-5">
							<img
								src="https://ananas.vn/wp-content/uploads/desktop_productlist.jpg"
								alt="" style="width: 100%;">
						</div>
					</div>

					<div class="row">

						<%@include file="item.jsp"%>

					</div>

					<%@include file="pageSize.jsp"%>
				</div>

			</div>
		</div>
		
	</main>
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