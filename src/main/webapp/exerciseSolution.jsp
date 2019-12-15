<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 15.12.2019
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Solution details:</h2>
    <p>${solution.description}</p>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
