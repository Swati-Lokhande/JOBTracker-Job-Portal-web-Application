<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.User" %>
<%@ include file="navbar.jsp" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <div class="main-content" align="center">
    <h3>Welcome, <%= user.getUsername() %>!</h3>

    <c:if test="${user.role eq 'recruiter'}">
        <form action="postjob" method="post">
            <h3>Post a Job</h3>
            Title: <input type="text" name="title" required /><br>
            Company: <input type="text" name="company" required /><br>
            Location: <input type="text" name="location" required /><br>
            Description:<br/>
            <textarea name="description" rows="5" cols="30"></textarea><br>
            <button type="submit">Post Job</button>
        </form>
    </c:if>

    <p><a href="viewjobs">View Jobs</a></p>
    <br>
    </div>
    
    
</body>
</html>
