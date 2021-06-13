<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
  <meta charset="UTF-8">
  <title>Błąd zapisu</title>
</head>
<body>
<div class="pageTittle">
  <h1>
    Błąd zapisu danych
    <br> Wymagane ponowne uzupełnienie i przesłanie formularza<br>
    <br>Sprawdź poprawność danych w polu: <br>
    <br> -Imię
    <br> -Nazwisko
    <br> -Nazwa użytkownika
    <br> -Hasło
  </h1>
</div>
<div class="groupPosition">
  <a href="http://localhost:8080/carapp/user/add">
    <button type="button" name="mainMenuButton">Prześlij ponownie</button>
  </a>
</div>
</body>
</html>
