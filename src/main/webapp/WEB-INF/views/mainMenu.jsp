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
    <a href="">
        <div class="mainDiv">Nowe zlecenie</div></a>
    <a href="taskRegister.html">
        <div class="mainDiv">Rejestr zleceń</div></a>
    <a href="">
        <div class="mainDiv">Pracownicy</div></a>
    <a href="archive.html">
        <div class="mainDiv">Archiwum</div></a>
    <a href="credits.html">
        <div class="mainDiv">O aplikacji</div></a>
    <div class="divPositionButton">
        <button>Wyloguj</button>
    </div>
</div>
</body>
</html>
