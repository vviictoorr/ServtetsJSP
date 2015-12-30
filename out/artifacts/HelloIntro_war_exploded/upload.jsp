<%--
  Created by IntelliJ IDEA.
  User: VICTOR
  Date: 27.04.2015
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
    MultipartRequest m = new MultipartRequest(request, "e://");
    out.print("successfully uploaded");
%>
</body>
</html>
