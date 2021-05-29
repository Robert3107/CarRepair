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
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">ID Zlecenia</th>
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">ID Pracownika</th>
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">Imię Klienta</th>
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">Nazwisko Klienta</th>
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">Telefon kontaktowy</th>
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">PESEL</th>
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">Marka pojazdu</th>
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">Opis Zlecenia</th>
        <th style="color: #ff4b02; border: 3px solid #ff4b02; background-color: #262626;font-size: large; padding: 20px;">Koszt zlecenia</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${orderRegister}" var="task">
        <tr>
            <td  style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.id}"/></td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.employeeID}"/></td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.customerFirstName}"/></td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.customerLastName}"/></td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.customerTelephone}"/></td>
            <td  style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.customerPesel}"/></td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.vehicleModel}"/></td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.describeOrder}"/></td>
            <td style="color: #f27100; border: 3px solid #f27100; background-color: #3b3b3b; font-size: large; padding: 20px;">
                <c:out value="${task.orderCost}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
    <div>
        <a href="http://localhost:8080/carapp/tasks/0/delete">
            <div class="divPositionButton">
                <button type="button" name="deleteButton">Usuń wpis</button>
            </div>
        </a>
    </div>
    <div>
        <a href="http://localhost:8080/carapp/tasks/add">
            <div class="divPositionButton">
                <button type="button" name="addNewTaskButton">Dodaj nowe zlecenie</button>
            </div>
        </a>
    </div>
    <div>
        <a href="http://localhost:8080/carapp/tasks/edit/id=?/description=?">
            <div class="divPositionButton">
                <button type="button" name="editButton">Edytuj zlecenie</button>
            </div>
        </a>
    </div>
    <div>
        <a href="http://localhost:8080/carapp/main/menu">
            <div class="divPositionButton">
                <button type="button" name="mainMenuButton">Menu główne</button>
            </div>
        </a>
    </div>
</body>
</html>
