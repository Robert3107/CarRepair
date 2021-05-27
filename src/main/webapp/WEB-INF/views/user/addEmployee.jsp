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
    <h1>Dodawanie nowego pracownika</h1>
</div>
<form:form method="post" modelAttribute="employee">
    <fieldset>
        <div class="form-group">
            <label class="col-md-4 control-label" for="firstName">Imię pracownika</label>
            <div class="col-md-5">
                <form:input id="firstName" path="firstName" placeholder="Jan"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="lastName">Nazwisko pracownika</label>
            <div class="col-md-5">
                <form:input id="lastName" path="lastName" placeholder="Kowalski"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="userName">Nazwa użytkownika</label>
            <div class="col-md-5">
                <form:input id="userName" path="userName" placeholder="kowal10"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="password">Hasło</label>
            <div class="col-md-5">
                <form:password id="password" path="password" placeholder="*****"/>
            </div>
        </div>
        <div>
            <input type="submit" value="Dodaj pracownika">
        </div>
    </fieldset>
</form:form>
<div>
    <a href="http://localhost:8080/carapp/main/menu">
        <div class="divPositionButton">
            <button type="button" name="deleteEmployeeButton">Menu główne</button>
        </div>
    </a>
</div>
</body>
</html>
