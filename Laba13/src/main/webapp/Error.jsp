<%--
  Created by IntelliJ IDEA.
  User: Anna
  Date: 12.05.2017
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<label>Произошла ошибка</label><br/>
${pageContext.errorData.statusCode}
</body>
</html>
