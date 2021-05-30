<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Usuń zlecenie</title>
</head>
<body>
<div class="pageTittle">
    <h1>Usuwanie zlecenia</h1>
</div>
<form:form method="post" modelAttribute="task">
    <div class="flexContainer">
        <label for="id">ID zlecenia</label>
        <form:input id="id" path="id" placeholder="ID..."/>
    </div>
    <div class="flexContainerSpecial">
        <a href="http://localhost:8080/carapp/tasks/all">
            <input type="submit" value="Usuń">
        </a>
        <a href="http://localhost:8080/carapp/main/menu">
            <button type="button" name="mainMenuButton">Menu główne</button>
        </a>
    </div>
</form:form>
</body>
</html>
