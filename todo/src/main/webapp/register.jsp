<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>新規登録</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- フォーム中央寄せ -->
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-6 col-lg-5">
			<div class="card shadow p-4">
				<h4 class="mb-4 text-center">新規登録</h4>
				
				<form action="RegisterServlet" method="POST">
					<div class="mb-3">
						<label for="email" class="form-label">メールアドレス</label>
						<input type="email" class="form-control" id="email" name="email" required>
					</div>

					<div class="mb-3">
						<label for="password" class="form-label">パスワード</label>
						<input type="password" class="form-control" id="password" name="password" required>
					</div>

					<button type="submit" class="btn btn-primary w-100">新規登録</button>
				</form>
				
			</div>
		</div>
	</div>
</div>

</body>
</html>