<%--
  Created by IntelliJ IDEA.
  User: VICTOR
  Date: 04.04.2015
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div>
    <table>
        <tr>
            <td> of visit:</td>
            <td><%=(request.getAttribute("current_count") == null ? "error" : request.getAttribute("current_count"))%>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
