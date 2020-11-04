<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>SUNLIT | Forgot Password</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Font Awesome -->
		<link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
		<!-- Ionicons -->
		<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<!-- icheck bootstrap -->
		<link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="../../dist/css/adminlte.min.css">
		<!-- Google Font: Source Sans Pro -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	</head>
	<body class="hold-transition login-page">
		<div class="login-box">
  			<div class="login-logo">
				<a href="../../FactoryIndex1.jsp"><b>SUNLIT</b>ind.co.,ltd.</a>
			</div>
			<!-- /.login-logo -->
			<div class="card">
				<div class="card-body login-card-body">
				<!-- <p class="login-box-msg">You forgot your password? Here you can easily retrieve a new password.</p> -->
					<p class="login-box-msg">パスワードを忘れましたか？ここで、新しいパスワードを取得できます。</p>
					<form action="recover-password.jsp" method="post">
						<div class="input-group mb-3">
							<input type="email" class="form-control" placeholder="Email">
							<div class="input-group-append">
								<div class="input-group-text">
									<span class="fas fa-envelope"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<button type="submit" class="btn btn-primary btn-block">Request new password</button>
							</div>
							<!-- /.col -->
						</div>
					</form>

<!--
					<p class="mt-3 mb-1"><a href="Login.jsp">ログイン</a></p>
					<p class="mb-0">
						<a href="register.jsp" class="text-center">Register a new membership</a>
						<a href="register.jsp" class="text-center">新規ユーザー登録</a>
					</p>
-->

				</div>
				<!-- /.login-card-body -->
			</div>
		</div>
		<!-- /.login-box -->

		<!-- jQuery -->
		<script src="../../plugins/jquery/jquery.min.js"></script>
		<!-- Bootstrap 4 -->
		<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- AdminLTE App -->
		<script src="../../dist/js/adminlte.min.js"></script>
	</body>
</html>