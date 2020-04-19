<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
<%--    <link href="<c:url value='/css/style.css'/>" rel="stylesheet" type="text/css" />--%>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
<jsp:include page="/header.jsp"/>
<h2>Ostatnie zgłoszenia</h2>
<table>
    <tr>
        <th>#</th>
        <th>Nazwa zadania</th>
        <th>Autor rozwiązania</th>
        <th>Data</th>
        <th>Rozwiązanie</th>
    </tr>
    <c:forEach items="${solutions}" var="solution" varStatus="theCount">
        <c:choose>
            <c:when test="${(theCount.count%2) == 0}">
                <tr class="bgc">
                    <td>${theCount.index+1}</td>
                    <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                    <td>${userDao.read(solution.usersId).getName()}</td>
                    <td>${solution.created}</td>
                    <td><a href="/exerciseSolution?id=${solution.id}">Szczegóły</a></td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td>${theCount.index+1}</td>
                    <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                    <td>${userDao.read(solution.usersId).getName()}</td>
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
