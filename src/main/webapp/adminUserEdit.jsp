<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Edit</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Admin panel: Edit user</h2>
    <form action="/adminUserEdit" method="post">
        <p>Name: <input name="name" value="${user.name}"></p>
        <p>Email: <input name="email" value="${user.email}"></p>
        <input type="hidden" name="password" value="${user.password}">
        <p>Group ID: <input name="groupId" value="${user.groupId}"></p>
        <input type="hidden" name="id" value="${user.id}">
        <p>
            <button type="submit">Save</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
