<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Dodawanie użytkownika</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Dodawanie użytkownika</h2>
    <form action="/adminUserAdd" method="post">
        <p>Nazwa: <input name="name"></p>
        <p>Email: <input name="email"></p>
        <p>Hasło: <input name="password"></p>
        <p>ID grupy: <input name="groupId"></p>
        <p>
            <button type="submit">Zapisz</button>
        </p>
    </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
