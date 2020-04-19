<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Edycja rozwiązania</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Edycja rozwiązania zadania: ${exercise.title}</h2>
    <form action="/solutionEdit" method="post">
        <p>Opis: <input name="description" value="${solution.description}"></p>
        <input type="hidden" name="exerciseId" value="${exerciseId}">
        <input type="hidden" name="solutionId" value="${solution.id}">
        <p>
            <button type="submit">Zapisz</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>


