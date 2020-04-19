<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Dodawanie rozwiązania</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Rozwiązanie</h2>
    <form action="/solutionAdd" method="post">
        <p>Opis: <input name="description"></p>
        <p>Użytkownik: <select name="userId">
            <c:forEach items="${users}" var="user">
                <option value="${user.id}">${user.name}</option>
            </c:forEach>
        </select></p>
        <input type="hidden" name="exerciseId" value="${exerciseId}">
        <p>
            <button type="submit">Zapisz</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>


