<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Zaloguj się</title>
</head>
<body>
<div class="pageTittle">
    <h1>Logowanie</h1>
</div>
<form:form method="post" modelAttribute="login">
    <fieldset>
        <div class="groupPosition">
            <div class="form-group">
                <label class="col-md-4 control-label" for="userName" style="color: #f27100">Nazwa użytkownika</label>
                <div class="col-md-5">
                    <form:input id="userName" path="userName" placeholder="Nazwa użytkownika"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="password" style="color: #f27100">Hasło</label>
                <div class="col-md-5">
                    <form:password id="password" path="password" placeholder="Hasło"/>
                </div>
            </div>
            <div class="divPositionButton">
                <button type="button" name="loginButton">Zaloguj</button>
            </div>
        </div>
    </fieldset>
</form:form>
</body>
</html>