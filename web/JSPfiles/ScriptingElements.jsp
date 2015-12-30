<%--
  Created by IntelliJ IDEA.
  User: VICTOR
  Date: 24.04.2015
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP</title>
    <link rel="stylesheet" type="text/css" href="../CSS/ScriptingElements.css">
</head>
<body>
<table id="alter">
    <caption>Scriptlet tags</caption>
    <tr>
        <th>Scriptlet tag < % % ></th>
        <th>Expression tag < %= %></th>
        <th>JSP Declaration Tag < %! %></th>
    </tr>
    <tr>
        <td>
            <div>
<pre>
    < %
        String name = request.getParameter("uname");
        out.print("Welcome " + name);
    % >
</pre>
                <%
                    String name = request.getParameter("uname");
                    out.print("Welcome " + name);
                %>

            </div>
        </td>
        <td>
            <div>
                <%= "JSP expression tag. Do not end your statement with semicolon in case of expression tag." %>
                <br>
                <hr>
                Current Time: <%= java.util.Calendar.getInstance().getTime() %>
                <br>
                <hr>
                <p>Example of JSP expression tag that prints the user name</p>
                <%= "Welcome " + request.getParameter("uname") %>
            </div>
        </td>
        <td>
            <div>
                <p>Example of JSP declaration tag that declares field</p>
                <%! int data = 50; %>
                <%= "Value of the variable is:" + data %>
                <br>
                <hr>
                <p>Example of JSP declaration tag that declares method</p>
<pre>
    < %!
        int cube(int n) {
            return n * n * n;
        }
    % >
    < %= "Cube of 3 is:" + cube(3) % >
</pre>
                <%!
                    int cube(int n) {
                        return n * n * n;
                    }
                %>
                <%= "Cube of 3 is:" + cube(3) %>
            </div>
        </td>
    </tr>
    <tr>
        <th>4 JSP config implicit object</th>
        <th>Expression tag < %= %></th>
        <th>JSP Declaration Tag < %! %></th>
    </tr>
    <tr>
        <td>
            <div>
                <%
                    out.print("Welcome " + request.getParameter("uname4"));

                    String driver = config.getInitParameter("dname4");
                    out.print("driver name is=" + driver);
                %>
            </div>
        </td>
        <td>
            5
        </td>
        <td>
            6
        </td>
    </tr>

</table>
<hr>
</body>
</html>
