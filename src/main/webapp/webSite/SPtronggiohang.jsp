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


	<div
		class="col-md-8 col-sm-12 border border-1 rounded mt-3 main-cart-left">

		<h4 class="p-2">
			<strong>Giỏ hàng (${countCart})</strong>
		</h4>
		<p class="bg-dark " style="height: 2px;"></p>
	<c:forEach items="${List}" var="x">
		<div class="col-md-12">
		<div class="row">

			<div class="col-sm-4 pb-4">
				<div class="card">
					<img src="${x.hinhSP}" alt="10">

				</div>
				<br>
				<div class="row">
					<div class="col-md-6">
						<button class="btn btn-outline-warning " style="font-size: 11px;">
							<strong><i class="bi bi-trash3"></i> Xóa sản phẩm</strong>
						</button>
					</div>
					<div class="col-md-6">
						<button class="btn btn-outline-warning" style="font-size: 11px;">
							<strong><i class="bi bi-pencil-square"></i> Sửa Sản Phẩm
							</strong>
						</button>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="row">
					<b class="fs-4"></b>
					<div class="row mt-4">
						<div class="col-sm-6">
							<p>
								Mã sản phẩm:<b> ${x.maSP}</b>
							</p>
							<b>
								<p style="color: rgb(236, 126, 0);" class="fs-5">${x.giaSP}
									VND</p>
							</b> <b class="fs-6">
								<p>SIZE</p>
							</b> <select class="form-select" aria-label="Default select example">
								<option selected>${x.size}</option>
								<option value="40">40</option>
								<option value="41">41</option>
								<option value="42">42</option>
								<option value="43">43</option>
								<option value="44">44</option>
							</select>
						</div>
						<div class="col-sm-6">
							<p>
								Tình trạng:<b>New Arrival</b>
							</p>
							<br>
							<br> <b class="fs-6">
								<p>SỐ LƯỢNG</p>
							</b>

							<div class="input-group">
								<input type="number" class="form-control" placeholder="Số lượng"
									aria-label="Recipient's username with two button addons" value="${x.soLuong}">
							<!-- <button class="btn btn-outline-warning" type="button">
									<i class="bi bi-dash-lg"></i>
								</button>
								<button class="btn btn-outline-warning" type="button">
									<i class="bi bi-plus-lg"></i>
								</button> 
							 -->	
							</div>
							<br> <b class="fs-6">
								<p><strong>THÀNH TIỀN: ${x.giaSP * x.soLuong} VND</strong></p>
							</b>
						</div>

					</div>








				</div>
				<br> <br> <br>

			</div>




		</div>
</div>
</c:forEach>
	</div>
	


</body>
</html>