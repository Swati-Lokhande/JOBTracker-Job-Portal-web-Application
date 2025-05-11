<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.User" %>
<%@ include file="navbar.jsp" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"recruiter".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Post a Job</title>
</head>
<body>
	
    <h2>Post a New Job</h2>
    <form action="postjob" method="post">
        Title: <input type="text" name="title" required /><br/>
        Company: <input type="text" name="company" required /><br/>
        Location: <input type="text" name="location" required /><br/>
        Description:<br/>
        <textarea name="description" rows="5" cols="30" required></textarea><br/>
        <button type="submit">Post Job</button>
    </form>
    <br/>
    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>
