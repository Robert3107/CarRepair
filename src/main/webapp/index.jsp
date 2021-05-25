<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Rejestr napraw samochodowych</title>
</head>
<body>
<div class="pageTittle">
    <h1>Rejestr Napraw Samochodowych</h1>
</div>
<div class="groupPosition">

    <input type="text" name="login" placeholder="Nazwa użytkownika">
    <input type="password" name="password" placeholder="Hasło">
    <div class="divPositionButton">
        <button type="button" name="buton">Zaloguj</button>
    </div>
</div>
</body>
</html>