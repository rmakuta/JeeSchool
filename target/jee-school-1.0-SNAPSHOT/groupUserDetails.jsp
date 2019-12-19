<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 15.12.2019
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Group List</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>"${user.name}" user details</h2>
    <p>Name: ${user.name}</p>
    <p>Email: ${user.email}</p>
    <h3>Added tasks solutions:</h3>
    <table>
        <tr>
            <th>Exercise name</th>
            <th>Date</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${solutions}" var="solution" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                        <td>${solution.created}</td>
                        <td><a href="/exerciseSolution?id=${solution.id}">Details</a></td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                        <td>${solution.created}</td>
                        <td><a href="/exerciseSolution?id=${solution.id}">Details</a></td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
