<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row ">
		<div class="col-sm-12 d-flex justify-content-center ">
			<nav aria-label="Page navigation example">
				<ul class="pagination text-dark">
					<c:forEach begin="1" end="${SP}" var="i">
						<c:choose>
							<c:when test="${sessionScope.checkfilter == null}">
								<li class="page-item"><a class="page-link  btn-light"
									href="sanPhamServlet?index=${i}">${i}</a></li>
							</c:when>
							<c:when test="${sessionScope.checkfilter == 1}">
								<li class="page-item"><a class="page-link  btn-light"
									href="FilterByName?index=${i}">${i}</a></li>
							</c:when>
							<c:when test="${sessionScope.checkfilter == 2}">
								<li class="page-item"><a class="page-link  btn-light"
									href="FilterByPrice?index=${i}&min=${sessionScope.min}&max=${sessionScope.max}">${i}</a></li>
							</c:when>
							<c:when test="${sessionScope.checkfilter == 3}">
								<li class="page-item"><a class="page-link  btn-light"
									href="FilterByBrand?index=${i}&brand=${sessionScope.brand}">${i}</a></li>
							</c:when>
						</c:choose>
						
						
					</c:forEach>
					<li class="page-item"><a class="page-link  btn-light"
						href="#">...</a></li>
					<li class="page-item"><a class="page-link  btn-light"
						href="#">>></a></li>
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>