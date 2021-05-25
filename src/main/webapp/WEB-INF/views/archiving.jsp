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
<div class="groupPosition">
    <div class="archivingTask">
        <span>ID zlecenia</span>
        <input type="text" name="idTask" placeholder="ID">
    </div>

    <div class="divPositionButton">
        <button name="archivingBut">Archiwizuj</button>
    </div>
</div>
</body>
</html>