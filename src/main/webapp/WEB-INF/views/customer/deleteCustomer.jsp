<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Usuń klienta</title>
</head>
<body>
<div class="pageTittle">
    <h1>Usuwanie klienta</h1>
</div>
<form:form method="post" modelAttribute="customer">
    <div class="flexContainer">
        <label for="id">ID klienta</label>
        <form:input id="id" path="id" placeholder="ID"/>
    </div>
    <div class="groupPosition">
        <input type="submit" value="Usuń">
        <a href="http://localhost:8080/carapp/main/menu">
            <button type="button" name="mainMenuButton">Menu główne</button>
        </a>
    </div>
</form:form>
</body>
</html>
