<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Add</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Add user</h2>
    <form action="/adminUserAdd" method="post">
        <p>Name: <input name="name"></p>
        <p>Email: <input name="email"></p>
        <p>Password: <input name="password"></p>
        <p>Group ID: <input name="groupId"></p>
        <p>
            <button type="submit">Save</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
