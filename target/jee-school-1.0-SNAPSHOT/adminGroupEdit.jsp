<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23.12.2019
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Group Edit</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Edit group</h2>
        <form action="/adminGroupEdit" method="post">
            <p>Group name: <input name="name" value="${group.name}"></p>
            <input type="hidden" name="id" value="${group.id}">
            <p>
                <button type="submit">Save</button>
            </p>
        </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
