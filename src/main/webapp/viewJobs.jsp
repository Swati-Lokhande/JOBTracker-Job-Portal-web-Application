<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Job" %>
<%@ include file="navbar.jsp" %>
<%
    List<Job> jobs = (List<Job>) request.getAttribute("jobs");
%>
<html>
<head>
    <title>Available Jobs</title>
</head>
<body>
    <h2>Job Listings</h2>
    <table border="1">
        <tr><th>Title</th><th>Company</th><th>Location</th><th>Description</th><th>Action</th></tr>
        <%
            for (Job job : jobs) {
        %>
        <tr>
            <td><%= job.getTitle() %></td>
            <td><%= job.getCompany() %></td>
            <td><%= job.getLocation() %></td>
            <td><%= job.getDescription() %></td>
            <td>
                <form action="applyjob" method="post">
                    <input type="hidden" name="jobId" value="<%= job.getId() %>" />
                    <button type="submit">Apply</button>
                </form>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
