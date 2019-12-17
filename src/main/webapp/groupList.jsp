<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 17.12.2019
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Group Users</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Group list</h2>
    <table>
        <tr>
            <th>Group name</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${groups}" var="group" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${group.name}</td>
                        <td><a href="/groupUsersList?id=${group.id}">Users</a></td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${group.name}</td>
                        <td><a href="/groupUsersList?id=${group.id}">Users</a></td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>

