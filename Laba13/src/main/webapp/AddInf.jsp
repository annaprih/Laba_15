%--
  Created by IntelliJ IDEA.
  User: Anna
  Date: 12.05.2017
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddFLS</title>
</head>
<body>
<%@ include file="Header.jsp"%><br/>
<form action="AddInfAdress">
    <label>Введите имя</label><br/>
    <input type="text" name="Name" value="${param.Name}"><br/>
    <label>Введите фамилию</label><br/>
    <input type="text" name="LastName" value="${param.LastName}"><br/>
    <input type="submit" value="Далее">
</form>
<form action="TypeOfPerson.jsp">
    <input type="submit" value="На главную">
</form>
<form action="TypeOfPerson.jsp">
    <input type="submit" value="Назад">
</form>
<%@ include file="Footer.jsp"%>

</body>
</html>
