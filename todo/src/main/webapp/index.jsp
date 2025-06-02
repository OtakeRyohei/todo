<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>タスク一覧</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .badge-warning { background-color: #ffc107; } /* 未完了 */
        .badge-success { background-color: #28a745; } /* 完了 */
    </style>
</head>
<body class="bg-light">
<div class="container mt-4 d-flex justify-content-between">
    <!-- タスク登録ボタン -->
    <a href="newTask.jsp" class="btn btn-success">＋ 新規タスク登録</a>

    <!-- ログアウトボタン -->
    <form action="LogoutServlet" method="POST">
        <button type="submit" class="btn btn-outline-danger">ログアウト</button>
    </form>
</div>


<div class="container mt-5">
    <h3 class="mb-4 fw-bold">タスク一覧</h3>
    <table class="table table-bordered bg-white">
        <thead class="table-primary">
            <tr>
                <th>状態</th>
                <th>タスク名</th>
                <th>期限</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="task" items="${tasks}">
                <tr class="${task.status == '未完了' ? 'table-light' : ''}">
                    <td>
                        <span class="badge ${task.status == '未完了' ? 'badge-warning' : 'badge-success'}">
                            ${task.status}
                        </span>
                    </td>
                    <td>${task.title}</td>
                    <td>${task.deadline}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>