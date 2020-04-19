<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Lista rozwiązań</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Rozwiązania zadania: ${exercise.title}</h2>
    <table>
        <tr>
            <th>#</th>
            <th>Autor</th>
            <th>Data utworzenia</th>
            <th>Data aktualizacji</th>
            <th>Działanie</th>
            <th>Rozwiązanie</th>
        </tr>
        <c:forEach items="${solutions}" var="solution" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${theCount.index+1}</td>
                        <td>${userDao.findUserById(solution.usersId).name}</td>
                        <td>${solution.created}</td>
                        <td>${solution.updated}</td>
                        <td><a href="/solutionEdit?id=${solution.id}&exerciseId=${exercise.id}">Edytuj</a>
                            <a href="/solutionDelete?id=${solution.id}&exerciseId=${exercise.id}">Usuń</a></td>
                        <td><a href="/exerciseSolution?id=${solution.id}">Szczegóły</a></td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${theCount.index+1}</td>
                        <td>${userDao.findUserById(solution.usersId).name}</td>
                        <td>${solution.created}</td>
                        <td>${solution.updated}</td>
                        <td><a href="/solutionEdit?id=${solution.id}&exerciseId=${exercise.id}">Edytuj</a>
                            <a href="/solutionDelete?id=${solution.id}&exerciseId=${exercise.id}">Usuń</a></td>
                        <td><a href="/exerciseSolution?id=${solution.id}">Szczegóły</a></td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <p class="add"><a href="/solutionAdd?exerciseId=${exercise.id}">Dodaj nowe rozwiązanie</a></p>
    <jsp:include page="/footer.jsp"/>
</div>
</html>


