<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Rejestr części</title>
</head>
<body>
<div class="pageTittle">
    <h1>Rejestr części</h1>
</div>
<table>
    <thead>
    <tr>
        <th>ID Części</th>
        <th>Nazwa części</th>
        <th>Marka</th>
        <th>Producent</th>
        <th>Kategoria</th>
        <th>Kraj produkcji</th>
        <th>Seria</th>
        <th>Cena</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${parts}" var="part">
        <tr>
            <td><c:out value="${part.id}"/></td>
            <td><c:out value="${part.partName}"/></td>
            <td><c:out value="${part.mark}"/></td>
            <td><c:out value="${part.producer}"/></td>
            <td><c:out value="${part.category}"/></td>
            <td><c:out value="${part.productionCountry}"/></td>
            <td><c:out value="${part.series}"/></td>
            <td><c:out value="${part.price}"/></td>
            <td>
                <a href="http://localhost:8080/carapp/parts/delete/${part.id}">
                    <button type="button" name="deletePartsButton">Usuń</button>
                </a>
                <a href="http://localhost:8080/carapp/parts/edit/${part.id}">
                    <button type="button" name="editPartsButton">Edytuj</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="flexContainerRegister">
    <a href="http://localhost:8080/carapp/parts/add">
        <button type="button" name="createPartsButton">Nowa część</button>
    </a>
    <a href="http://localhost:8080/carapp/main/menu">
        <button type="button" name="mainMenuButton">Menu główne</button>
    </a>
</div>
</body>
</html>
