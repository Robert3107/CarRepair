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
    <fieldset>
        <div class="form-group">
            <label class="col-md-4 control-label" for="employeeID">ID Pracownika</label>
            <div class="col-md-5">
                <form:input id="employeeID" path="employeeID" placeholder="ID pracownika..."/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="customerFirstName">Imię klienta</label>
            <div class="col-md-5">
                <form:input id="customerFirstName" path="customerFirstName" placeholder="np. Jan..."/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="customerLastName">Nazwisko klienta</label>
            <div class="col-md-5">
                <form:input id="customerLastName" path="customerLastName" placeholder="np. Kowalski..."/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="customerTelephone">Telefon kontaktowy</label>
            <div class="col-md-5">
                <form:input id="customerTelephone" path="customerTelephone" placeholder="123-456-789"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="customerPesel">PESEL</label>
            <div class="col-md-5">
                <form:input id="customerPesel" path="customerPesel" placeholder="Podaj pesel..."/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="vehicleModel">Model pojazdu</label>
            <div class="col-md-5">
                <form:input id="vehicleModel" path="vehicleModel" placeholder="np. Audi A4..."/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="describeOrder">Opis zlecenia</label>
            <div class="col-md-5">
                <form:textarea id="describeOrder" path="describeOrder" placeholder="Opis zlecenia..."/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="orderCost">Koszt zlecenia</label>
            <div class="col-md-5">
                <form:input id="orderCost" path="orderCost" placeholder="Koszt zlecenia..."/>
            </div>
        </div>
        <div>
            <input type="submit" name="Zapisz">
        </div>
    </fieldset>
</form:form>
</body>
</html>
