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
    <h2>${user.name}: szczegóły użytkownika</h2>
    <p>Nazwa: ${user.name}</p>
    <p>Email: ${user.email}</p>
    <p>Grupa: ${groupDao.findGroupById(user.groupId).name}</p>
    <h3>Dodane rozwiązania:</h3>
    <table>
        <tr>
            <th>#</th>
            <th>Zadanie</th>
            <th>Data</th>
            <th>Rozwiązanie</th>
        </tr>
        <c:forEach items="${solutions}" var="solution" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${theCount.index+1}</td>
                        <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                        <td>${solution.created}</td>
                        <td><a href="/exerciseSolution?id=${solution.id}">Szczegóły</a></td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${theCount.index+1}</td>
                        <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                        <td>${solution.created}</td>
                        <td><a href="/exerciseSolution?id=${solution.id}">Szczegóły</a></td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
