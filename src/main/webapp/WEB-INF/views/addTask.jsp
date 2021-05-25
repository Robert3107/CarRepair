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
<div class="taskBut">
    <div class="taskInfo">
        <span>ID Pracownika</span>
        <input type="text" name="employeeID" placeholder="Id pracownika...">
    </div>
    <div class="taskInfo">
        <span>Imię klienta</span>
        <input type="text" name="customerName" placeholder="Imię klienta...">
    </div>
    <div class="taskInfo">
        <span>Nazwisko klienta</span>
        <input type="text" name="customerSurname" placeholder="Nazwisko klienta...">
    </div>
    <div class="taskInfo">
        <span>Telefon kontaktowy</span>
        <input type="text" name="tele" placeholder="123-456-789">
    </div>
    <div class="taskInfo">
        <span>PESEL Klienta</span>
        <input type="text" name="pesel" placeholder="PESEL...">
    </div>
    <div class="taskInfo">
        <span>Marka pojazdu</span>
        <input type="text" name="carModel" placeholder="Model pojazdu...">
    </div>
    <div class="taskInfo">
        <span>Opis zlecenia</span>
        <textarea name="newTaskDesc" placeholder="Opis zlecenia..."></textarea>
    </div>
    <div class="taskInfo">
        <span>Koszt zlecenia</span>
        <input type="text" name="cost" placeholder="Cena zlecenia...">
    </div>
    <a href="taskRegister.html">
        <button name="saveNewTask">Zapisz</button>
    </a>
</div>
</body>
</html>
