<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Rejestr pracowników</title>
</head>
<body>
<div class="pageTittle">
    <h1>Rejestr pracowników</h1>
</div>
<table>
    <thead>
    <tr>
        <th>ID Pracownika</th>
        <th>Imię pracownika</th>
        <th>Nazwisko pracownika</th>
        <th>Nazwa użytkownika</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${employees}" var="employee">
        <tr>
            <td><c:out value="${employee.id}"/></td>
            <td><c:out value="${employee.firstName}"/></td>
            <td><c:out value="${employee.lastName}"/></td>
            <td><c:out value="${employee.userName}"/></td>
            <td>
                <a href="http://localhost:8080/carapp/user/${employee.id}/delete">
                    <button type="button" name="deleteEmployeeButton">Usuń</button>
                </a>
                <a href="http://localhost:8080/carapp/user/edit/${employee.id}">
                    <button type="button" name="deleteEmployeeButton">Edytuj</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="flexContainerRegister">
    <a href="http://localhost:8080/carapp/user/add">
        <button type="button" name="createEmployeeButton">Dodaj pracownika</button>
    </a>
    <a href="http://localhost:8080/carapp/main/menu">
        <button type="button" name="deleteEmployeeButton">Menu główne</button>
    </a>

</div>
</body>
</html>
