<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 06.09.2018
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:out value="Date: ${date}"/>
<table>
    <c:forEach items="${freetimes}" var="item">
    <tr>
        <td><a href="Servlettest?command=recordbooking&time=${item}">
            <c:out value="${item}"/>
        </a></td>
    </tr>
    </c:forEach>
</body>
</html>
