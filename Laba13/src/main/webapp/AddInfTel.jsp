<%--
  Created by IntelliJ IDEA.
  User: Anna
  Date: 12.05.2017
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddTel</title>
</head>
<body>
<%@ include file="Header.jsp"%><br/>
<form action="TypeOfPerson.jsp">
    <label>Введите телефон</label><br/>
    <input type="text" name="Tel" value="${param.Tel}"><br/>
    <input type="submit" value="На главную">
</form>
<form action="AddInfAdress.jsp">
    <input type="text" name="Country" value="${param.Country}"><br/>
    <input type="text" name="Adr" value="${param.Adr}"><br/>
    <input type="submit" value="Назад">
    </form>
<%@ include file="Footer.jsp"%>
</body>
</html>
