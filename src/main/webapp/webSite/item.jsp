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
	<c:forEach items="${ListSP}" var="o">
		<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4 pb-5">

			<div class="card text-center">
				<a href="/SOF3011ASM/Detail?id=${o.maSP}"><img
					href="/SOF3011ASM/Detail?id=${o.maSP}" class="card-img-top"
					src="${o.hinhSP}" alt="Card image"></a> <strong
					class="card-title text-dark">${o.brand}</strong>
				<div class="card-body">
					<a href="/SOF3011ASM/Detail?id=${o.maSP}"
						class="text-decoration-none text-dark"><p class="tensp">${o.tenSP}</p></a>
					
					<p class="card-text" style="margin-top: 20px;">
						<strong class="card-title text-dark">${o.giaSP} VNĐ</strong>
					</p>

				</div>
			</div>

		</div>

	</c:forEach>

</body>
</html>