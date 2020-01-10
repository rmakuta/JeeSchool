<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Users</title>
    <jsp:include page="/style.jsp"/>
</head>
<body>
<div class="center">
    <jsp:include page="/header.jsp"/>
    <h2>Admin panel: Users</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${users}" var="user" varStatus="theCount">
            <c:choose>
                <c:when test="${(theCount.count%2) == 0}">
                    <tr class="bgc">
                        <td>${user.name}</td>
                        <td><a href="/adminUserEdit?id=${user.id}">Edit</a>
                                <%--                            <a href="/groupUsersList?id=${group.id}">Delete</a>--%>
                        </td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${user.name}</td>
                        <td><a href="/adminUserEdit?id=${user.id}">Edit</a>
                                <%--                            <a href="/groupUsersList?id=${group.id}">Delete</a>--%>
                        </td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <p class="add"><a href="/adminUserAdd.jsp">Add new</a></p>
    <jsp:include page="/footer.jsp"/>
</div>
</body>
</html>
