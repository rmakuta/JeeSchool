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
    <h2>Admin panel: Exercise user</h2>
    <form action="/adminExerciseEdit" method="post">
        <p>Title: <input name="title" value="${exercise.title}"></p>
        <p>Description: <input name="description" value="${exercise.description}"></p>
        <input type="hidden" name="id" value="${exercise.id}">
        <p>
            <button type="submit">Save</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>

