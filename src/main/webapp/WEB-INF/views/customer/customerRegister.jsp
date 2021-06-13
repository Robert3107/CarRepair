<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Rejestr klientów</title>
</head>
<body>
<div class="pageTittle">
    <h1>Rejestr klientów</h1>
</div>
<table>
    <thead>
    <tr>
        <th>ID Klienta</th>
        <th>Imię klienta</th>
        <th>Nazwisko klienta</th>
        <th>Adres zamieszkania</th>
        <th>Kod pocztowy</th>
        <th>Numer telefonu</th>
        <th>PESEL</th>
        <th>Zniżka procentowa</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${customers}" var="client">
        <tr>
            <td><c:out value="${client.id}"/></td>
            <td><c:out value="${client.firstName}"/></td>
            <td><c:out value="${client.lastName}"/></td>
            <td><c:out value="${client.address}"/></td>
            <td><c:out value="${client.postalCode}"/></td>
            <td><c:out value="${client.phoneNumber}"/></td>
            <td><c:out value="${client.pesel}"/></td>
            <td><c:out value="${client.discount}"/></td>
            <td>
                <a href="http://localhost:8080/carapp/customer/${customers.id}/delete">
                    <button type="button" name="deleteEmployeeButton">Usuń</button>
                </a>
                <a href="http://localhost:8080/carapp/user/edit/${customers.id}">
                    <button type="button" name="deleteEmployeeButton">Edytuj</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="flexContainerRegister">
    <a href="http://localhost:8080/carapp/customers/add">
        <button type="button" name="createEmployeeButton">Dodaj klienta</button>
    </a>
    <a href="http://localhost:8080/carapp/main/menu">
        <button type="button" name="deleteEmployeeButton">Menu główne</button>
    </a>
</div>
</body>
</html>
