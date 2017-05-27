<%--
  Created by IntelliJ IDEA.
  User: Anna
  Date: 13.05.2017
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="core" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fomating" uri ="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri ="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="x" uri ="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="function" uri ="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="p" uri="PAA.tld" %>

<html>
<head>
    <title>ShowTegs</title>
</head>
<body>
<p>Теги core</p>
<core:out value="Работа с JSLT"/><br/>
<core:out value="${2+2}"/><br/>
<core:set value="anya" var="temp_1" scope="application"/>
<core:if test="${temp_1 eq 'anya'}">
    <core:out value="Переменная temp_1: ${temp_1}"/><br/>
</core:if>
<core:remove var="temp_1" scope="application"/>
<core:set value="${8}" var="temp_2" scope="application"/>
<core:choose>
    <core:when test="${temp_2 >10}">
        <core:out value="${temp_2} > 10"/><br/>
    </core:when>
    <core:when test="${temp_2 <10}">
        <core:out value="${temp_2} < 10"/><br/>
    </core:when>
    <core:otherwise>
        <core:out value="Ни одно из условий не выполнилось"/>
    </core:otherwise>
</core:choose>
<core:forEach var="i" items="${headerValues}" varStatus="count">
    <core:out value="${count.count}: ${i.key.toString()}"/><br/>
</core:forEach>
<core:import url="Footer.jsp"/><br/>
<core:set var="date" value="<%=java.util.Calendar.getInstance().getTime()%>"/>

<p>Теги formating</p>
<fomating:formatDate value="${date}" type="time"/><br/>
<fomating:formatDate value="${date}" type = "both" dateStyle = "short" timeStyle = "medium"/><br/>
<fomating:formatNumber value="${temp_2}" type="currency"/><br/>
<fomating:formatNumber value="${temp_2}" maxIntegerDigits="1" minFractionDigits="2"/><br/>
<fomating:parseNumber value="100" type="number" var="temp_3"/>
<core:out value="${temp_3}"/><br/>
<fomating:parseDate value="21.05.2017" pattern="dd.MM.yyyy" var="temp_4"/>
<fomating:bundle basename="bstu.Bundle">
    <fomating:message key="Anya"/><br/>
    <fomating:message key="Sasha"/><br/>
</fomating:bundle>


<p>Теги sql</p>
<sql:setDataSource var = "connectDB" driver = "com.mysql.jdbc.Driver"
                 url = "jdbc:mysql://localhost/java11"
                 user = "root"  password = "80291227107"/>

<sql:query dataSource = "${connectDB}" var = "query">
    SELECT * from login;
</sql:query>
    <core:forEach var = "rows" items = "${query.rows}">
        <tr>
            <td> <core:out value = "${rows.Login}"/></td><br/>
            <td> <core:out value = "${rows.Password}"/></td><br/>
            <td> <core:out value = "${rows.TypeUser}"/></td><br/>
        </tr>
    </core:forEach>
<%--
<sql:update dataSource = "${connectDB}">
    INSERT INTO login VALUES ('olya', '7887940', 'user');
</sql:update>
<sql:query dataSource = "${connectDB}" var = "res">
    SELECT * from login;
</sql:query>
    <core:forEach var = "rows" items = "${res.rows}">
        <tr>
            <td> <core:out value = "${rows.Login}"/></td>
            <td> <core:out value = "${rows.Password}"/></td>
            <td> <core:out value = "${rows.TypeUser}"/></td>
        </tr>
    </core:forEach>
<core:set var = "temp_5" value = "olya"/>
<sql:update dataSource = "${connectDB}">
    DELETE FROM login WHERE Login = ?
    <sql:param value = "${temp_5}" />
</sql:update>

<sql:query dataSource = "${connectDB}" var = "res">
    SELECT * from login;
</sql:query>
<core:forEach var = "rows" items = "${res.rows}">
    <tr>
        <td> <core:out value = "${rows.Login}"/></td>
        <td> <core:out value = "${rows.Password}"/></td>
        <td> <core:out value = "${rows.TypeUser}"/></td>
    </tr>
</core:forEach>

<sql:transaction dataSource = "${connectDB}">
    <sql:update>
        UPDATE login SET Password = '2734573' WHERE Login = 'sasha'
    </sql:update>
    <sql:update>
        INSERT INTO login VALUES ('nina', '7887940', 'user');
    </sql:update>
</sql:transaction>

<sql:query dataSource = "${connectDB}" var = "res">
    SELECT * from login;
</sql:query>
<core:forEach var = "rows" items = "${res.rows}">
    <tr>
        <td> <core:out value = "${rows.Login}"/></td>
        <td> <core:out value = "${rows.Password}"/></td>
        <td> <core:out value = "${rows.TypeUser}"/></td>
    </tr>
</core:forEach>
--%>


<p>Теги xml</p>
<core:import var = "animal" url = "WEB-INF/Animals.xml"/>
<x:parse xml = "${animal}" var = "doc"/>
<x:out select = "$doc/cats/cat[1]/name" /><br>
<x:out select = "$doc/cats/cat[1]/color" /><br>
<x:out select = "$doc/cats/cat[2]/name" /><br>
<x:if select = "$doc/cats/cat[1]/age > 2">
<x:out select="$doc/cats/cat[1]/name"/> older then 2 years"<br/>
</x:if>
<x:choose>
    <x:when select = "$doc/cats/cat[1]/name = 'Suzanna'">
    Name of the cat is
    <x:out select="$doc/cats/cat[1]/name"/><br/>
    </x:when>
    <x:when select = "$doc/cats/cat[2]/name = 'Shans'"><br/>
    Name of the cat is
    <x:out select="$doc/cats/cat[2]/name"/><br/>
    </x:when>
    <x:otherwise>
    Cat without name
    </x:otherwise>
</x:choose>

<core:import url = "WEB-INF/Style.xsl" var = "xsl"/>
<x:transform xml = "${animal}" xslt = "${xsl}"/>

<p>Теги function:</p>
<core:set var = "str_1" value = "Anya Prykhach"/>
<core:out value="${function:length(str_1)}"/><br/>
<core:if test = "${function:contains(str_1, 'Anya')}">
    ${str_1} contains substring: Anya<br/>
</core:if>
<core:if test = "${function:containsIgnoreCase(str_1, 'PRYKHACH')}">
    ${str_1} contains substring: PRYKHACH<br/>
</core:if>
<core:if test = "${function:endsWith(str_1, 'ach')}">
    ${str_1} ends with ach<br/>
</core:if>
<core:if test = "${function:startsWith(str_1, 'An')}">
    ${str_1} starts with An<br/>
</core:if>
<core:out value="${function:indexOf(str_1, 'Pry')}"/><br/>
<core:set var = "str_2" value = "${function:split(str_1, '  ')}" />
<core:set var = "str_3" value = "${function:join(str_2, '-')}" />
Result string: ${str_3}<br/>
<core:set var = "str_3" value = "${function:replace(str_3,'Anya' ,'Anna' )}" />
${str_3}<br/>

<form action="LastPage.jsp" method="post">
<p:PAALabledTextField name="name" label="Enter name"/>
<p:PAALabledTextField name="lastName" label="Enter last name"/>
<p:PAALabledTextField name="secondName" label="Enter second name"/>
<p:PAALabledTextField name="city" label="Enter the city"/>
<p:PAALabledTextField name="Street" label="Enter the street"/><br/>
<p:PAAsubmit/>
</form>
</body>
</html>
