<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Archiwizacja zlecenia</title>
</head>
<body>
    <div class="pageTittle">
        <h1>Archiwizacja zlecenia</h1>
    </div>
    <form:form method="post" modelAttribute="task">
        <fieldset>
            <div class="form-group">
                <label class="col-md-4 control-label" for="id">ID zlecenia</label>
                <div class="col-md-5">
                    <form:input id="id" path="id" placeholder="ID..."/>
                </div>
            </div>
            <div class="divPositionButton">
                <button type="button" name="deleteButton">Archiwizuj</button>
            </div>
        </fieldset>
    </form:form>
</body>
</html>