<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>タスク更新</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">

    <h2>タスクを更新</h2>

    <form action="updateServlet" method="POST">
    <input type="hidden" name="id" value="${task.id}">

    <div class="mb-3">
        <label for="title" class="form-label">タスク名</label>
        <input type="text" class="form-control" id="title" name="title" value="${task.title}" required>
    </div>

    <div class="mb-3">
        <label for="deadline" class="form-label">期限</label>
        <input type="date" class="form-control" id="deadline" name="deadline" value="${task.deadline}" required>
    </div>

    <div class="mb-3">
        <label for="status" class="form-label">状態</label>
        <select class="form-select" id="status" name="status">
            <option value="未完了" ${task.status == '未完了' ? 'selected' : ''}>未完了</option>
            <option value="完了" ${task.status == '完了' ? 'selected' : ''}>完了</option>
        </select>
    </div>
    <input type="hidden" name="user_id" value="${task.user_id}">
    
    <button type="submit" class="btn btn-primary">更新する</button>
    <a href="index.jsp" class="btn btn-secondary">キャンセル</a>
</form>
</body>
</html>