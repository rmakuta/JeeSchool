<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Exercise Add</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Exercise user</h2>
    <form action="/adminExerciseAdd" method="post">
        <p>Title: <input name="title"></p>
        <p>Description: <input name="description"></p>
        <p>
            <button type="submit">Save</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>

