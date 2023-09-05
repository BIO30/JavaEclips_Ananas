<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Thêm đoạn mã này vào thẻ head của trang web -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
</head>
<body>
	<div class="modal fade " id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div id="alert-message" class="alert" role="alert"></div>
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

					<form id="signupForm" name="frmform1" action="LoginControlSVL"
						method="post">
						<div class="mb-3">

							<label for="txtEmail" class="form-label fs-5"><strong>Email
							</strong></label> <input type="email" ng-model="dnemail" name="txtEmail"
								placeholder="Exemple@gmail.com" class="form-control" required>
							<!-- <small class=" text-danger"
														ng-show="frmform1.txtEmail.$invalid">*Vui lòng nhập
														đúng Email</small> -->



						</div>
						<div class="mb-3">
							<label class="form-label fs-5"><strong>Password
							</strong></label> <input type="password" ng-model="dnpass" name="txtpass"
								placeholder="Mật khẩu" class="form-control" required
								minlength="6">
						
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">nhớ mật khẩu ?</label>
						</div>

						<div class="alert text-danger" role="alert">${message}</div>
						<button type="submit" class="btn btn-primary">
							<strong>Đăng Nhập </strong>
						</button>
						<p>
							Bạn chưa có tài khoản đăng kí <a href="#" data-bs-toggle="modal"
								data-bs-target="#exampleModal02"><strong>Tại đây</strong></a>
						</p>
					</form>



				</div>

			</div>
		</div>
	</div>
	<!-- Thêm đoạn mã này trước thẻ đóng body của trang web -->
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.js"></script>

	<!--	<script>
	// Bắt sự kiện submit của form đăng nhập
	document.querySelector('form[name="frmform1"]').addEventListener(
			'submit', function(event) {
				event.preventDefault(); // Ngăn chặn form submit mặc định

				// Lấy giá trị email và password
				var email = this.elements.txtEmail.value;
				var password = this.elements.txtpass.value;

				// Kiểm tra email và password có hợp lệ không
				if (isValidEmail(email) && password === '123456') {
					// Hiển thị hộp thoại thông báo đăng nhập thành công
					Swal.fire({
						icon : 'success',
						title : 'Đăng nhập thành công',
						showConfirmButton : false,
						timer : 1500,
						// Tắt form đăng nhập
						willClose: () => {
							this.submit();
						}
					});
				} else {
					// Hiển thị hộp thoại thông báo đăng nhập thất bại
					Swal.fire({
						icon : 'error',
						title : 'Đăng nhập thất bại',
						text : 'Email hoặc mật khẩu không đúng!',
					});
				}
			});

	function isValidEmail(email) {
		var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		return emailRegex.test(email);
	}
	</script>-->

</body>
</html>

