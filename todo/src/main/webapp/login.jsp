<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>ログイン</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        .register-link {
            position: absolute;
            top: 20px;
            right: 20px;
            z-index:1000;
        }
    </style>
</head>
<body class="bg-light">

    <div class="register-link">
        <a href="register.jsp" class="btn btn-outline-primary fw-bold fs-6">新規登録</a>
    </div>

    <div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
        <div class="card shadow-sm p-4" style="width: 100%; max-width: 400px;">
            <h3 class="text-center mb-4">ログイン</h3>

            <form action="loginServlet" method="POST">
                <div class="mb-3">
                    <label for="email" class="form-label">メールアドレス</label>
                    <input type="email" class="form-control" id="email" name="email" required />
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">パスワード</label>
                    <input type="password" class="form-control" id="password" name="password" required />
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">ログイン</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
