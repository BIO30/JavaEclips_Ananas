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


<!--  <style>
input:invalid+span::before {
	content: "Không được để trống";
	color: red;
}
</style>-->
</head>
<body>



	<%@include file="header.jsp"%>

	<c:url var="url" value="/user" />
	<!-- 	Form -->
	<div class="container">
		<form action="${url}/index" method="post" id="myForm">
			<div class="mb-3">
				<label for="maNguoiDung" class="form-label">MaND</label> <input
					type="text" class="form-control" id="maND" name="maND"
					value="${form.maND}" placeholder="maND" required> <span
					class="error-message" role="alert" aria-live="assertive"></span>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="email" class="form-control" id="email" name="email"
					value="${form.email}" placeholder="email" required>
			</div>
			<div class="mb-3">
				<label for="hoTen" class="form-label">Fullname</label> <input
					type="text" class="form-control" id="hoTen" name="hoTen"
					value="${form.hoTen}" placeholder="hoTen" required> <span
					class="error-message" role="alert" aria-live="assertive"></span>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					value="${form.matKhau}" type="password" class="form-control"
					id="password" name="matKhau" placeholder="password" required>
				<span class="error-message" role="alert" aria-live="assertive"></span>

			</div>

			<div class="mb-3">
				<label for="soDT" class="form-label">SDT</label> <input
					value="${form.soDT}" type="text" class="form-control" id="soDT"
					name="soDT" placeholder="soDT" required>
			</div>
			<div class="mb-3">
				<label for="tenND" class="form-label">TenND</label> <input
					value="${form.tenND}" type="text" class="form-control" id="tenND"
					name="tenND" placeholder="tenND" required> <span
					class="error-message" role="alert" aria-live="assertive"></span>
			</div>
			<div class="alert alert-success" role="alert">${message}</div>
			<hr>
			<button type="submit" class="btn btn-primary mb-3"
				formaction="${url}/create">Create</button>
			<button type="submit" class="btn btn-warning mb-3"
				formaction="${url}/update">Update</button>
			<button type="submit" class="btn btn-danger mb-3"
				formaction="${url}/delete">Delete</button>
			<a href="${url}/index" class="btn btn-secondary mb-3">Reset</a>
		</form>
		<!-- 	Bảng -->
		<table class="table table-bordered table-hover">
			<thead class="text-warning">
				<tr>
					<th>MaND</th>
					<th>Email</th>
					<th>HoTen</th>
					<th>MatKhau</th>
					<th>Role</th>
					<th>SoDT</th>
					<th>TenND</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
					<tr>
						<td>${item.maND}</td>
						<td>${item.email}</td>
						<td>${item.hoTen}</td>
						<td>${item.matKhau}</td>
						<td>${item.role?'Admin':'User'}</td>
						<td>${item.soDT}</td>
						<td>${item.tenND}</td>

						<td><a href="${url}/edit/${item.maND}"
							class="btn btn-warning">Edit</a></td>

					</tr>
				</c:forEach>
			</tbody>

		</table>
		<form action="DangXuatsvl" method="post"
			class="d-flex justify-content-center">
			<button type="submit" class="btn btn-outline-warning container">Đăng
				xuất</button>
		</form>
		<br>
		<%@include file="footer.jsp"%>
	</div>


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
<!--  	<script>
  const form = document.getElementById('myForm');

  form.addEventListener('submit', (event) => {
    // prevent form submit
    event.preventDefault();

    // get form fields
    const emailField = form.elements['email'];
    const phoneField = form.elements['soDT'];

    // validate email
    const emailRegex = /^\S+@\S+\.\S+$/;
    if (!emailRegex.test(emailField.value)) {
      alert('NHẬP ĐÚNG ĐỊNH DẠNG CỦA EMAIL');
      emailField.focus();
      return;
    }

    // validate phone number
    const phoneRegex = /^\d{10}$/;
    if (!phoneRegex.test(phoneField.value)) {
      alert('NHẬP ĐÚNG SỐ ĐIÊN THOẠI (10 SỐ)');
      phoneField.focus();
      return;
    }

    // submit form if all fields are valid
    form.submit();
    function validateForm() {
  	  let maND = document.forms["myForm"]["maND"].value;
  	  let hoTen = document.forms["myForm"]["hoTen"].value;
  	  let tenND = document.forms["myForm"]["tenND"].value;
  	  
  	  if (maND == "" || hoTen == "" || tenND == "") {
  	    alert("Không được bỏ trống");
  	    return false;
  	  }
  	}
  });
  


</script> -->

</body>
</html>