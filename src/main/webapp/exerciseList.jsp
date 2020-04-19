<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Lista zadań</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Zadania</h2>
    <table>
        <tr>
            <th>#</th>
            <th>Tytuł</th>
            <th>Opis</th>
            <th>Rozwiązania</th>
        </tr>
        <c:forEach items="${exercises}" var="exercise" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${theCount.index+1}</td>
                        <td>${exercise.title}</td>
                        <td>${exercise.description}</td>
                        <td><a href="/exerciseSolutionList?id=${exercise.id}">Szczegóły</a></td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${theCount.index+1}</td>
                        <td>${exercise.title}</td>
                        <td>${exercise.description}</td>
                        <td><a href="/exerciseSolutionList?id=${exercise.id}">Szczegóły</a></td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <jsp:include page="/footer.jsp"/>
</div>
</html>

