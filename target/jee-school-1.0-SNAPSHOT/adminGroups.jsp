<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Grupy użytkownika</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Panel administratora: grupy</h2>
    <table>
        <tr>
            <th>#</th>
            <th>Nazwa grupy</th>
            <th>Działanie</th>
        </tr>
        <c:forEach items="${groups}" var="group" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${theCount.index+1}</td>
                        <td>${group.name}</td>
                        <td><a href="/adminGroupEdit?id=${group.id}">Edytuj</a>
                            <a href="/adminGroupDelete?id=${group.id}">Usuń</a>
                        </td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${theCount.index+1}</td>
                        <td>${group.name}</td>
                        <td><a href="/adminGroupEdit?id=${group.id}">Edytuj</a>
                            <a href="/adminGroupDelete?id=${group.id}">usuń</a>
                        </td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <p class="add"><a href="/adminGroupAdd.jsp">Dodaj nową</a></p>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
