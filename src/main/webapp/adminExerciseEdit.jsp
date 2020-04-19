<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Exercise Edit</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Panel administratora: zadanie użytkownika</h2>
    <form action="/adminExerciseEdit" method="post">
        <p>Tytuł: <input name="title" value="${exercise.title}"></p>
        <p>Opis: <input name="description" value="${exercise.description}"></p>
        <input type="hidden" name="id" value="${exercise.id}">
        <p>
            <button type="submit">Zapisz</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>

