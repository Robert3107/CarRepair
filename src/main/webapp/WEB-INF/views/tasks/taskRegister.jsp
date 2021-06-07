<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Rejestr zleceń</title>
</head>
<body>
<div class="pageTittle">
    <h1>Rejestr zleceń</h1>
</div>
<table>
    <thead>
    <tr>
        <th>ID Zlecenia</th>
        <th>ID Pracownika</th>
        <th>Imię Klienta</th>
        <th>Nazwisko Klienta</th>
        <th>Telefon kontaktowy</th>
        <th>PESEL</th>
        <th>Marka pojazdu</th>
        <th>Opis Zlecenia</th>
        <th>Koszt zlecenia</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${orderRegister}" var="task">
        <tr>
            <td><c:out value="${task.id}"/></td>
            <td><c:out value="${task.employeeID}"/></td>
            <td><c:out value="${task.customerFirstName}"/></td>
            <td><c:out value="${task.customerLastName}"/></td>
            <td><c:out value="${task.customerTelephone}"/></td>
            <td><c:out value="${task.customerPesel}"/></td>
            <td><c:out value="${task.vehicleModel}"/></td>
            <td><c:out value="${task.describeOrder}"/></td>
            <td><c:out value="${task.orderCost}"/></td>
            <td><a href="http://localhost:8080/carapp/tasks/${task.id}/delete">
                <button type="button" name="deleteButton">Usuń</button>
            </a>
            </td>
            <td>
                <a href="http://localhost:8080/carapp/tasks/edit/${task.id}">
                    <button type="button" name="editButton">Edytuj</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="flexContainerRegister">

    <a href="http://localhost:8080/carapp/tasks/add">
        <button type="button" name="addNewTaskButton">Dodaj nowe zlecenie</button>
    </a>

    <a href="http://localhost:8080/carapp/main/menu">
        <button type="button" name="mainMenuButton">Menu główne</button>
    </a>

    <%-- Dodać archiwiziacje       --%>

</div>
</body>
</html>
