<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 30.08.2018
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>Settings !</h3>
    <hr/>
        <c:out value="${user}, you can change your data!"/>
    <hr/>
    <a href="Servlettest">Return to login</a>

</body>
</html>
