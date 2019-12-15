<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 28.11.2019
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
    <link href="<c:url value='/css/style.css'/>" rel="stylesheet" type="text/css" />
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
<jsp:include page="/header.jsp"/>
<h2>Last submissions</h2>
<table>
    <tr>
        <th>Exercise name</th>
        <th>Solution author</th>
        <th>Date</th>
        <th>Solution</th>
    </tr>
    <c:forEach items="${solutions}" var="solution" varStatus="theCount">
        <c:choose>
            <c:when test="${(theCount.count%2) == 0}">
                <tr class="bgc">
                    <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                    <td>${userDao.read(solution.usersId).getName()}</td>
                    <td>${solution.created}</td>
                    <td>${solution.description}</td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                    <td>${userDao.read(solution.usersId).getName()}</td>
                    <td>${solution.created}</td>
                    <td>${solution.description}</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</table>
<jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
