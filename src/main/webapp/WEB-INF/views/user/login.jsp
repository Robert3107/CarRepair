<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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

        <div class="flexContainer">
            <label for="userName">Nazwa użytkownika</label>
            <form:input id="userName" path="userName" placeholder="Nazwa użytkownika"/>
        </div>
        <div class="flexContainer">
            <label for="password">Hasło</label>
            <form:password id="password" path="password" placeholder="*****"/>
        </div>
        <div class="groupPosition">
            <input type="submit" value="Zaloguj">
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

        <sec:authorize access="isAuthenticated()">
            <form action="<c:url value="/logout"/>" method="post">
                <input type="submit" value="Wyloguj">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </sec:authorize>

    </form:form>
</body>
</html>