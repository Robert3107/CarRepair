<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Edycja zlecenia</title>
</head>
    <body>
        <div class="pageTittle">
            <h1>Edycja danych zlecenia</h1>
        </div>
        <form:form method="post" modelAttribute="task">
            <div class="groupPosition">
                <form:input path="taskID" name="taskID" placeholder="Podaj ID zlecenia..."/>
            </div>
            <div class="groupPosition">
                <form:textarea path="description" name="description" placeholder="Wprowadź dane do edycji..."/>
            </div>
            <div class="divPositionButton">
                <input type="submit" value="Edytuj">
            </div>
        </form:form>
    </body>
</html>
