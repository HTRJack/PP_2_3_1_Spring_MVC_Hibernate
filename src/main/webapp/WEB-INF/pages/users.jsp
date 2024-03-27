<%--
  Created by IntelliJ IDEA.
  User: zakharkvysko
  Date: 27.03.2024
  Time: 02:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users</title>
</head>
<body>

<h2>All users</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Last name</th>
        <th>Age</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td align="center">${user.id}</td>
            <td>${user.name}</td>
            <td>${user.lastName}</td>
            <td align="center">${user.age}</td>
            <td>
                <a href="/editUser?id=${user.id}">edit</a>

                <a href="/delete?id=${user.id}">remove</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>Add user</h2>
<c:url value="/add" var="var"/>
<form action="${var}" method="POST">
    <label for="name">Name</label><br>
    <input type="text" name="name" id="name"><br>
    <label for="lastName">Last name</label><br>
    <input type="text" name="lastName" id="lastName"><br>
    <label for="age">Age</label><br>
    <input type="text" name="age" id="age"><br><br>
    <input type="submit" value="Add">
</form>
</body>
</html>