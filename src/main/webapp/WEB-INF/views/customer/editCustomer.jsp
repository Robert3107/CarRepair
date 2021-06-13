<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Edycja klienta</title>
</head>
<body>
    <div class="pageTittle">
        <h1>Edycja klienta</h1>
    </div>

    <form:form method="post" modelAttribute="customer">
        <div class="flexContainer">
            <label for="firstName">Imię</label>
            <form:input id="firstName" path="firstName" placeholder="Jan"/>
        </div>
        <div class="flexContainer">
            <label for="lastName">Nazwisko</label>
            <form:input id="lastName" path="lastName" placeholder="Kowalski"/>
        </div>
        <div class="flexContainer">
            <label for="address">Adres</label>
            <form:input id="address" path="address" placeholder="Kwiatowa 10/1"/>
        </div>
        <div class="flexContainer">
            <label for="postalCode">Kod pocztowy</label>
            <form:input id="postalCode" path="postalCode" placeholder="12-345"/>
        </div>
        <div class="flexContainer">
            <label for="phoneNumber">Telefon kontaktowy</label>
            <form:input id="phoneNumber" path="phoneNumber" placeholder="123-456-789"/>
        </div>
        <div class="flexContainer">
            <label for="pesel">PESEL</label>
            <form:input id="pesel" path="pesel" placeholder="PESEL"/>
        </div>
        <div class="flexContainer">
            <label for="discount">Zniżka procentowa</label>
            <form:input id="discount" path="discount" placeholder="Zniżka w %"/>
        </div>
        <div class="flexContainerSpecial">
            <input type="submit" value="Edytuj">
            <a href="http://localhost:8080/carapp/main/menu">
                <button type="button" name="mainMenuButton">Menu główne</button>
            </a>
        </div>
    </form:form>
</body>
</html>