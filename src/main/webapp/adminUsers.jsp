<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Użytkownicy</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Panel administratora: użytkownicy</h2>
    <table>
        <tr>
            <th>#</th>
            <th>Nazwa</th>
            <th>Działanie</th>
        </tr>
        <c:forEach items="${users}" var="user" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${theCount.index+1}</td>
                        <td>${user.name}</td>
                        <td><a href="/adminUserEdit?id=${user.id}">Edytuj</a>
                            <a href="/adminUserDelete?id=${user.id}">Usuń</a>
                        </td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${theCount.index+1}</td>
                        <td>${user.name}</td>
                        <td><a href="/adminUserEdit?id=${user.id}">Edytuj</a>
                            <a href="/adminUserDelete?id=${user.id}">Usuń</a>
                        </td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <p class="add"><a href="/adminUserAdd.jsp">Dodaj nowy</a></p>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
