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
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${employee.id}"/>
            </td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${employee.firstName}"/>
            </td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${employee.lastName}"/>
            </td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${employee.userName}"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
    <div>
        <a href="http://localhost:8080/carapp/user/add">
            <div class="divPositionButton">
                <button type="button" name="createEmployeeButton">Dodaj pracownika</button>
            </div>
        </a>
    </div>
    <div>
        <a href="http://localhost:8080/carapp/user/0/delete">
            <div class="divPositionButton">
                <button type="button" name="deleteEmployeeButton">Usuń pracownika</button>
            </div>
        </a>
    </div>
    <div>
        <a href="http://localhost:8080/carapp/main/menu">
            <div class="divPositionButton">
                <button type="button" name="deleteEmployeeButton">Menu główne</button>
            </div>
        </a>
    </div>
</body>
</html>
