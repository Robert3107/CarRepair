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
    <h1>Usuwanie pracownika</h1>
</div>
    <form:form method="post" modelAttribute="employee">
        <fieldset>
            <div class="form-group">
                <label class="col-md-4 control-label" for="id">ID Pracownika</label>
                <div class="col-md-5">
                    <form:input id="id" path="id" placeholder="Jan"/>
                </div>
            </div>
            <div>
                <input type="submit" name="Zapisz">
            </div>
        </fieldset>
    </form:form>
</body>
</html>
