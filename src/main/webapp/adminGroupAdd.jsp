<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 02.01.2020
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Group Add</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Add group</h2>
    <form action="/adminGroupAdd" method="post">
        <p>Group name <input name="name"></p>
<%--        <input type="hidden" name="id" value="${group.id}">--%>
        <p>
            <button type="submit">Save</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
