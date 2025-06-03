<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>新規登録</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<style>
		.login-link {
			position: absolute;
			top: 20px;
			right: 30px;
			z-index: 1000;
		}
	</style>
</head>
<body class="bg-light">

	
	<div class="login-link">
		<a href="login.jsp" class="btn btn-outline-primary fw-bold fs-6">ログイン</a>
	</div>

	
	<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
		<div class="card shadow-sm p-4" style="width: 100%; max-width: 400px;">
			<h3 class="text-center mb-4">新規登録</h3>
			
			<form action="registerServlet" method="POST">
				<div class="mb-3">
					<label for="email" class="form-label">メールアドレス</label>
					<input type="email" class="form-control" id="email" name="email" required>
				</div>

				<div class="mb-3">
					<label for="password" class="form-label">パスワード</label>
					<input type="password" class="form-control" id="password" name="password" required>
				</div>

				<div class="d-grid">
					<button type="submit" class="btn btn-primary">新規登録</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>