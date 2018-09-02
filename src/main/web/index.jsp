<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 08.08.2018
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  $ТУЦ$
  gvghgvhg
  hgjfhghj
  <form action="Servlettest" >
    <%--<jsp: param name="command" value="login"/>--%>
      <input type="submit" value="Execute">
  </form>
  <h3>Login</h3>
  <hr/>
  <form name="loginForm" method="POST" action="Servlettest">
    <input type="hidden" name="command" value ="login">
    Login:<br/>
    <input type="text" name="login" value =""> <br/>
    Password:<br/>
    <input type="password" name ="password" value="">
    <br/>
    <input type ="submit" value="Enter">


  </form>
  <a href="Servlettest">log in</a>
  <br/>
  <a href="Servlettest?command=tosignup">sign up</a>
  <br/>
  <a href ="Servlettest?command=settings">settings</a>
  <br/>
  <a href ="Servlettest?command=chooseservicetype">записаться</a>

  <hr/>
  </body>
</html>
