<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新規作成</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow p-4" style="width: 100%; max-width: 500px;">
        <h3 class="mb-4 fw-bold">新規作成</h3>
        <form action="newtaskServlet" method="POST">
            <!-- タスク名 -->
            <div class="mb-3">
                <label for="title" class="form-label">タスク名</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>

            <!-- 状態 -->
            <div class="mb-3">
                <label for="status" class="form-label">状態</label>
                <select class="form-select" id="status" name="status" required>
                    <option value="未完了" selected>未完了</option>
                    <option value="完了">完了</option>
                </select>
            </div>

            <!-- 期限 -->
            <div class="mb-3">
                <label for="deadline" class="form-label">期限</label>
                <input type="date" class="form-control" id="deadline" name="deadline" required>
            </div>

            

            <!-- 作成ボタン -->
            <button type="submit" class="btn btn-primary w-100">作成</button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
