<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <meta charset="UTF-8">
    <title>Rejestr zleceń</title>
</head>
<body>

<table>
    <thead>
    <tr>
        <th>ID Zlecenia</th>
        <th>ID Pracownika</th>
        <th>Imię Klienta</th>
        <th>Nazwisko Klienta</th>
        <th>Telefon kontaktowy</th>
        <th>PESEL</th>
        <th>Marka pojazdu</th>
        <th>Opis Zlecenia</th>
        <th>Koszt zlecenia</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orderRegister}" var="task">
        <tr>
            <td><c:out value="${task.id}"/></td>
            <td><c:out value="${task.customerFirstName}"/></td>
            <td><c:out value="${task.customerLastName}"/></td>
            <td><c:out value="${task.customerTelephone}"/></td>
            <td><c:out value="${task.custromerPesel}"/></td>
            <td><c:out value="${task.vehicleModel}"/></td>
            <td><c:out value="${task.describeOrder}"/></td>
            <td><c:out value="${task.orderCost}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
