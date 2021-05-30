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

    <div class="flexContainer">
        <label for="firstName">Imię pracownika</label>
        <form:input id="firstName" path="firstName" placeholder="Jan"/>
    </div>

    <div class="flexContainer">
        <label for="lastName">Nazwisko pracownika</label>
        <form:input id="lastName" path="lastName" placeholder="Kowalski"/>
    </div>

    <div class="flexContainer">
        <label for="userName">Nazwa użytkownika</label>
        <form:input id="userName" path="userName" placeholder="kowal10"/>
    </div>

    <div class="flexContainer">
        <label for="password">Hasło</label>
        <form:password id="password" path="password" placeholder="*****"/>
    </div>

    <div class="flexContainerSpecial">
        <input type="submit" value="Dodaj pracownika">
        <a href="http://localhost:8080/carapp/main/menu">
            <button type="button" name="deleteEmployeeButton">Menu główne</button>
        </a>
    </div>

</form:form>
</body>
</html>
