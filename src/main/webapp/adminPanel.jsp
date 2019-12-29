<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23.12.2019
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Admin panel</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Admin panel</h2>
        <p><a href="">Users</a></p>
        <p><a href="/adminGroups">User groups</a></p>
        <p><a href="">Exercises</a></p>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
