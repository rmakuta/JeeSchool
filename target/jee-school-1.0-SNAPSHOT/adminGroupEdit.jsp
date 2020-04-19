<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Edycja grupy</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Edycja grupy</h2>
        <form action="/adminGroupEdit" method="post">
            <p>Nazwa grupy: <input name="name" value="${group.name}"></p>
                <input type="hidden" name="id" value="${group.id}">
            <p>
                <button type="submit">Zapisz</button>
            </p>
        </form>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
