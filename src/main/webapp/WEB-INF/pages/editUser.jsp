<%--
  Created by IntelliJ IDEA.
  User: zakharkvysko
  Date: 27.03.2024
  Time: 02:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit user</title>
</head>
<body>
<c:url value="/edit" var="var"/>
<form action="${var}" method="POST">
    <input type="hidden" name="id" value="${user.id}">
    <label for="name">Name</label><br>
    <input type="text" name="name" id="name" value="${user.name}"><br>
    <label for="lastName">Last name</label><br>
    <input type="text" name="lastName" id="lastName" value = "${user.lastName}"><br>
    <label for="age">Age</label><br>
    <input type="text" name="age" id="age" value = "${user.age}"><br><br>
    <input type="submit" value="Edit user">
</form>
</body>
</html>