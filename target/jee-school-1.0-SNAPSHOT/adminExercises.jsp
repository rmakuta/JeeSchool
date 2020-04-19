<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Exercises</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Panel administratora: zadania</h2>
    <table>
        <tr>
            <th>#</th>
            <th>Tytuł</th>
            <th>Opis</th>
            <th>Działanie</th>
        </tr>
        <c:forEach items="${exercises}" var="exercise" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${theCount.index+1}</td>
                        <td>${exercise.title}</td>
                        <td>${exercise.description}</td>
                        <td><a href="/adminExerciseEdit?id=${exercise.id}">Edytuj</a>
                            <a href="/adminExerciseDelete?id=${exercise.id}">Usuń</a>
                        </td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${theCount.index+1}</td>
                        <td>${exercise.title}</td>
                        <td>${exercise.description}</td>
                        <td><a href="/adminExerciseEdit?id=${exercise.id}">Edytuj</a>
                            <a href="/adminExerciseDelete?id=${exercise.id}">Usuń</a>
                        </td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <p class="add"><a href="/adminExerciseAdd.jsp">Dodaj nowe</a></p>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>

