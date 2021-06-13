<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Edycja części</title>
</head>
<body>
<div class="pageTittle">
    <h1>Edycja części</h1>
</div>

<form:form method="post" modelAttribute="part">

    <div class="flexContainer">
        <label for="partName">Nazwa części</label>
        <form:input id="partName" path="partName" placeholder="np. Akumulator"/>
    </div>
    <div class="flexContainer">
        <label for="mark">Marka</label>
        <form:input id="mark" path="mark" placeholder="Marka części"/>
    </div>
    <div class="flexContainer">
        <label for="producer">Producent</label>
        <form:input id="producer" path="producer" placeholder="Producent części"/>
        <form:errors path="producer" />
    </div>
    <div class="flexContainer">
        <label for="category">Kategoria</label>
        <form:input id="category" path="category" placeholder="Kategoria części"/>
        <form:errors path="category" />
    </div>
    <div class="flexContainer">
        <label for="productionCountry">Kraj produkcji</label>
        <form:input id="productionCountry" path="productionCountry" placeholder="Kraj produkcji"/>
        <form:errors path="productionCountry" />
    </div>
    <div class="flexContainer">
        <label for="series">Numer seryjny</label>
        <form:input id="series" path="series" placeholder="Nr seryjny"/>
    </div>
    <div class="flexContainer">
        <label for="price">Cena</label>
        <form:input id="price" path="price" placeholder="Cena"/>
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