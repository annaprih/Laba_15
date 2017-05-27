<%--
  Created by IntelliJ IDEA.
  User: Anna
  Date: 12.05.2017
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddAdress</title>
</head>
<body>
<%@ include file="Header.jsp"%><br/>
${Name}<br/>
${LastName}<br/>
${Time}<br/>
<form action="AddInfTel.jsp">
    <label>Введите город</label><br/>
    <input type="text" name="Country" value="${param.Country}"><br/>
    <label>Введите улицу</label><br/>
    <input type="text" name="Adr" value="${param.Adr}"><br/>
    <input type="submit" value="Далее">
</form>
<form action="TypeOfPerson.jsp">
    <input type="submit" value="На главную">
</form>
<form action="AddInf.jsp">
    <input type="text" name="Name" value="${Name}"><br/>
    <input type="text" name="LastName" value="${LastName}"><br/>
    <input type="submit" value="Назад"><br/>
</form>
<%@ include file="Footer.jsp"%>
</body>
</html>
