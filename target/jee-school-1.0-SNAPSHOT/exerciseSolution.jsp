<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Szczegóły rozwiązania:</h2>
    <p>${solution.description}</p>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
