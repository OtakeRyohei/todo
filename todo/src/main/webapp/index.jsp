<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>タスク一覧</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        .badge-warning { background-color: #ffc107; } /* 未完了 */
        .badge-success { background-color: #28a745; } /* 完了 */
    </style>
</head>
<body class="bg-light">

<!-- 上部ボタンエリア -->
<div class="container mt-4 d-flex justify-content-between">
    <a href="newTask.jsp" class="btn btn-success">新規タスク登録</a>
    <a href="login.jsp" class="btn btn-danger">ログアウト</a>
</div>

<!-- ★ タスク一覧 中央寄せ -->
<div class="d-flex justify-content-center mt-5">
    <div style="width: 100%; max-width: 900px;">
        <h3 class="mb-4 fw-bold text-center">タスク一覧</h3>
        <table class="table table-bordered bg-white">
            <thead class="table-primary">
                <tr>
                    <th>状態</th>
                    <th>タスク名</th>
                    <th>期限</th>
                    <th>操作</th>
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
                        <td>
                            <form action="updateServlet" method="GET">
                                <input type="hidden" name="id" value="${task.id}">
                                <button type="submit" class="btn btn-primary btn-sm">更新</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
