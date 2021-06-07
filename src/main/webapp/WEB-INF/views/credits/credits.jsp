<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pl">
<head>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
  <meta charset="UTF-8">
  <title>O aplikacji</title>
</head>
  <body>
  <div class="pageTittle">
    <h1>O aplikacji</h1>
  </div>
  <div class="pageTittle">
      "CarRepair" jest prostą aplikacją webową umożliwiająca zarządzanie zleceniami napraw
      oraz kontrolę przebiegu pracy w warsztacie samochodowym.<br> Aplikacji umożliwia tworzenie nowych zleceń,
      edycje zleceń aktualnych, oraz zarządzanie aktualnymi pracownikami.<br>
      Program jest oparty o środowisko Java, oraz wykorzystuję framework-i Spring oraz Spring Hibernate.
  </div>
  <div class="divPositionButton">
    <a href="http://localhost:8080/carapp/main/menu">
      <button type="button" name="mainMenuButton">Menu główne</button>
    </a>
  </div>
  <a href="https://github.com/Robert3107" target="_blank">
      <img src="${pageContext.request.contextPath}/css/image/github.png" alt="GitHub">
  </a>
  </body>
</html>
