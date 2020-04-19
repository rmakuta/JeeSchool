<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Panel administratora</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Panel administratora</h2>
        <p><a href="/adminUsers">Użytkownicy</a></p>
        <p><a href="/adminGroups">Grupy</a></p>
        <p><a href="/adminExercises">Zadania</a></p>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
