<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Menu Główne</title>
</head>
<body>
<div class="pageTittle">
    <h1>Menu Główne</h1>
</div>
<div class="groupPosition">

    <a href="http://localhost:8080/carapp/tasks/add">
        <div class="mainDiv">Nowe zlecenie</div>
    </a>

    <a href="http://localhost:8080/carapp/tasks/all">
        <div class="mainDiv">Rejestr zleceń</div>
    </a>

    <a href="http://localhost:8080/carapp/user/all">
        <div class="mainDiv">Pracownicy</div>
    </a>

    <a href="http://localhost:8080/carapp/main/credits">
        <div class="mainDiv">O aplikacji</div>
    </a>

    <div class="divPositionButton">
        <a href="http://localhost:8080/carapp">
            <button>Wyloguj</button>
        </a>
    </div>
</div>
</body>
</html>
