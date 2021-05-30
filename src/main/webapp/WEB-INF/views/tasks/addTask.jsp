<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Nowe Zlecenie</title>
</head>
<body>
<div class="pageTittle">
    <h1>Nowe zlecenie</h1>
</div>

<form:form method="post" modelAttribute="task">
    <div class="flexContainer">
        <label for="employeeID">ID Pracownika</label>
        <form:input id="employeeID" path="employeeID" placeholder="ID pracownika..."/>
    </div>
    <div class="flexContainer">
        <label for="customerFirstName">Imię klienta</label>
        <form:input id="customerFirstName" path="customerFirstName" placeholder="np. Jan..."/>
    </div>
    <div class="flexContainer">
        <label for="customerLastName">Nazwisko klienta</label>
        <form:input id="customerLastName" path="customerLastName" placeholder="np. Kowalski..."/>
    </div>
    <div class="flexContainer">
        <label for="customerTelephone">Telefon kontaktowy</label>
        <form:input id="customerTelephone" path="customerTelephone" placeholder="123-456-789"/>
    </div>
    <div class="flexContainer">
        <label for="customerPesel">PESEL</label>
        <form:input id="customerPesel" path="customerPesel" placeholder="Podaj pesel..."/>
    </div>
    <div class="flexContainer">
        <label for="vehicleModel">Model pojazdu</label>
        <form:input id="vehicleModel" path="vehicleModel" placeholder="np. Audi A4..."/>
    </div>
    <div class="flexContainer">
        <label for="describeOrder">Opis zlecenia</label>
        <form:textarea id="describeOrder" path="describeOrder" placeholder="Opis zlecenia..."/>
    </div>
    <div class="flexContainer">
        <label for="orderCost">Koszt zlecenia</label>
        <form:input id="orderCost" path="orderCost" placeholder="Koszt zlecenia..."/>
    </div>
    <div class="flexContainerSpecial">
        <input type="submit" value="Zapisz">
        <a href="http://localhost:8080/carapp/main/menu">
            <button type="button" name="mainMenuButton">Menu główne</button>
        </a>
    </div>
</form:form>
</body>
</html>
