<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>新規作成</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="mb-4 text-left">新規作成</h2>
        <div class="card shadow-sm mx-auto" style="max-width: 500px;">
            <div class="card-body">
                <form action="" method="POST">
                    <div class="mb-3">
                        <label class="form-label">タスク名</label>
                        <input type="text" name="title" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">状態</label>
                        <select name="status" class="form-select">
                            <option value="未完了">未完了</option>
                            <option value="完了">完了</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">期限</label>
                        <input type="date" name="deadline" class="form-control" required>
                    </div>
                    <!-- 担当者（ログインユーザー）＝user_id はサーバー側で取得する -->
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">作成</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>