<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/mystyle.css">
    <link rel="stylesheet" type="text/css" href="CSS/comment.css">
    <script type="text/javascript" src="JS/comment.js"></script>

    <%--<style></style>--%>
</head>
<body>

<div class="header"><h2>Servlet JSP</h2></div>

<div class="container">

<div class="left">
    <p>Servlet</p>
    <hr>
    <p>1 Registration form in servlet</p>

    <div class="RegistrationForm">
        <form action="servletRegister" method="post">

            Name:<label>
            <input type="text" name="userName"/>
        </label><br/><br/>
            Password:<input type="password" name="userPass"/><br/><br/>
            Email Id:<input type="text" name="userEmail"/><br/><br/>
            Country:
            <select name="userCountry">
                <option>India</option>
                <option>Pakistan</option>
                <option>other</option>
            </select><br/><br/>
            <input type="submit" value="register"/>
        </form>
    </div>

    <hr>
    <p>2 Fetching Result for the given rollno</p>

    <div class="FetchingResult">
        <form action="servletSearch">
            Enter your Rollno:<input type="text" name="roll"/><br/>

            <input type="submit" value="search"/>
        </form>
    </div>
    <hr>
    <p>3 Improving Servlet performance to fetch records from database</p>
    <a href="servlet1PerfFetch">first servlet</a>|
    <a href="servlet2PerfFetch">second servlet</a>

    <hr>
    <p>4 Upload file</p>

    <div>
        <form action="goUpload" method="post" enctype="multipart/form-data">
            Select File:<input type="file" name="fname"/><br/>
            <input type="image" src="img/MainUpload.png"/>
        </form>
    </div>
    <hr>
    <p>5 Downloading file</p>

    <div>
        <a href="DownloadServlet">download the jsp file</a>
    </div>
    <hr>
    <p>6 Send email</p>

    <form action="servletSendMail">
        To:<input type="text" name="to"/><br/>
        Subject:<input type="text" name="subject"><br/>
        Text:<textarea rows="10" cols="10" name="msg"></textarea><br/>
        <input type="submit" value="send">
    </form>
    <hr>
    <p>7 Write data into PDF</p>
    <hr>
    <p>8 Login Form + database</p>

    <form action="servlet1LoginForm" method="post">
        Name:<input type="text" name="username"/><br/><br/>
        Password:<input type="password" name="userpass"/><br/><br/>

        <input type="submit" value="login"/>

    </form>
    <hr>
    <p>9 Display image</p>

    <a href="servlet1DisplayImageSER">click for photo</a>

</div>

<div class="body">
    <h1>Servlet</h1>

    <form action="welcome" method="get">
        Enter your name<input type="text" name="name"><br>
        <input type="submit" value="login"><br>
    </form>
    <hr>
    <p>HTTP headers sent by your client:</p>
    <a href="run"> click Here </a>
    <hr>
    <form action="go" method="get">
        Name:<input type="text" name="userName"/><br/>
        Password:<input type="password" name="userPass"/><br/>
        <input type="submit" value="login"/>
    </form>
    <hr>
    <p>sendRedirect method in servlet</p>

    <form action="MySearcher">
        <input type="text" name="name">
        <input type="submit" value="Google Search">
    </form>
    <hr>
    <p>Example of ServletConfig to get initialization parameter</p>
    <a href="servlet1">click here</a>
    <hr>
    <p>Example of ServletConfig to get all the initialization parameters</p>
    <a href="servlet2">click here</a>
    <hr>
    <p>Example of ServletContext to get the initialization parameter</p>
    <a href="servlet3">click here</a>
    <hr>
    <p>Example of ServletContext to get all the initialization parameters</p>
    <a href="servlet4">click here</a>
    <hr>
    <p>Example of ServletContext to set and get attribute</p>
    <a href="servlet11">click here 1</a>
    <a href="servlet12">click here 2</a>
    <hr>
    <p>In this example, we are storing the name of the user in the cookie object and accessing it in another
        servlet.</p>

    <form action="servlet13" method="post">
        Name:<input type="text" name="userName"/><br/>
        <input type="submit" value="go"/>
    </form>
    <hr>
    <h1>Welcome to Login App by Cookie</h1>
    <a href="login.html">Login</a>|
    <a href="LogoutServlet">Logout</a>|
    <a href="ProfileServlet">Profile</a>
    <hr>
    <p>Example of using Hidden Form Field</p>
    <hr>
    <form action="goH" method="get">
        Name:<input type="text" name="uname"/><br/>
        <input type="submit" value="go"/>
    </form>
    <hr>
    <p>Example of using URL Rewriting
        In this example, we are maintaning the state of the user using link. For this purpose,
        we are appending the name of the user in the query string and getting the value from the query string in
        another
        page.</p>

    <form action="servlet1U">
        Name:<input type="text" name="userName"/><br/>
        <input type="submit" value="go"/>
    </form>
    <hr>
    <p>Example of using HttpSession
        In this example, we are setting the attribute in the session scope in one servlet and getting that value
        from the
        session scope in another servlet. To set the attribute in the session scope,
        we have used the setAttribute() method of HttpSession interface and to get the attribute, we have used the
        getAttribute method.</p>

    <form action="servlet1H">
        Name:<input type="text" name="userName"/><br/>
        <input type="submit" value="go"/>
    </form>
    <hr>
    <p>Example of ServletContextEvent and ServletContextListener
        In this example, we are retrieving the data from the emp32 table.
        To serve this, we have created the connection object in the listener class and used the connection object in
        the
        servlet.</p>

    <a href="servlet1EE">fetch records</a>
    <hr>
    <p>Improving Servlet performance to fetch records from database

        In this example, we are going to improve the performance of web application to fetch records from the
        database.
        To serve this, we are storing the data of the table in a collection, and reusing this collection in our
        servlet.
        So, we are not directly hitting the database again and again. By this, we are improving the performance.

        To run this application, you need to create following table with some records.</p>
    <a href="servlet1ISP">first servlet</a>|
    <a href="servlet2ISP">second servlet</a>
    <hr>
    <p>Example of HttpSessionEvent and HttpSessionListener to count total and current logged-in users</p>

    <form action="/servlet1Count">
        Name:<input type="text" name="username"><br>
        Password:<input type="password" name="userpass"><br>

        <input type="submit" value="login"/>
    </form>
    <hr>
    <p>Simple Example of Filter
        In this example, we are simply displaying information
        that filter is invoked automatically after the post processing of the request.</p>
    <a href="servlet1F">click here</a>
    <hr>
    <p>Example of authenticating user using filter</p>

    <form action="servlet1Au">
        Name:<input type="text" name="name"/><br/>
        Password:<input type="password" name="password"/><br/>

        <input type="submit" value="login">
    </form>
    <hr>
    <p>Example of FilterConfig
        In this example, if you change the param-value to no, request will be forwarded to
        the servlet otherwise filter will create the response with the message: this page is underprocessing.</p>
    <a href="servlet1FilCon">click here</a>
    <hr>
    <p>Example of SingleThreadModel interface
        Let's see the simple example of implementing the SingleThreadModel interface.</p>
    <a href="servlet1Thread">click here to invoke single threaded servlet</a>
    <hr>
    <p>Example to display image using Servlet. In this example, we are using FileInputStream class to read image and
        ServletOutputStream class for writing this image content as a response. To make the performance faster, we
        have used
        BufferedInputStream and BufferedOutputStream class.</p>
    <a href="servlet1DisplayImage">click for photo</a>
</div>

<div class="three">
    <p>Struts 2</p>
    <ol>
        <li></li>
        <hr>
        <li></li>
        <hr>
        <li></li>
        <hr>
    </ol>

</div>

<div class="right">
    <p>JSP</p>
    <ol>
        <li>Scripting elements</li>
        <form action="JSPfiles/ScriptingElements.jsp">
            <input type="text" name="uname4">
            <input type="submit" value="go"><br/>
        </form>
        <hr>
        <li>MVC</li>
        <form action="ControllerServlet" method="post">
            Name:<input type="text" name="name"><br>
            Password:<input type="password" name="password"><br>
            <input type="submit" value="login">
        </form>
        <hr>
        <li>Registration</li>
        <form action="process.jsp">
            <input type="text" name="uname" value="Name..." onclick="this.value=''"/><br/>
            <input type="text" name="uemail" value="Email ID..." onclick="this.value=''"/><br/>
            <input type="password" name="upass" value="Password..." onclick="this.value=''"/><br/>
            <input type="submit" value="register"/>
        </form>
        <hr>
        <li>Login and logout</li>
        <form action="loginprocess.jsp">
            Email:<input type="text" name="email"/><br/><br/>
            Password:<input type="password" name="pass"/><br/><br/>
            <input type="submit" value="login"/>
        </form>
        <hr>
        <li>Download file from the server</li>
        <a href="download.jsp">download the jsp file</a>
        <hr>
        <li>Upload from the server</li>
        <form action="upload.jsp" method="post" enctype="multipart/form-data">
            Select File:<input type="file" name="fname"/><br/>
            <input type="image" src="img/MainUpload.png"/>
        </form>
    </ol>
</div>

</div>

<div class="footer">
    <p>Add wish</p>
    <%--<%@include file="JSPfiles/ScriptingElements.jsp" %>--%>
    <%--<jsp:forward page="JSPfiles/ScriptingElements.jsp"/>--%>
    <%--<jsp:include page="JSPfiles/ScriptingElements.jsp"/>--%>
    <div id="result"></div>
    <br>

    <div id="line">
        <hr class="line_hr">
    </div>
    <p>
        <span> Enter name: </span> <input type="text" id="login" onkeyup="Num_calc(this)">
    </p>

    <p>
        <button type="button" onclick="write_name()" id="button">GO</button>
    </p>
</div>
</body>
</html>