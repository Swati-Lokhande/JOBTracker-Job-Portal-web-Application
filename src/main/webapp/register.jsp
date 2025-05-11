<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="navbar.jsp" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
	<div class="main-content" align="center">
    <h2>Register</h2>
    <form action="register" method="post">
        Username: <input type="text" name="username" required /><br/>
        Password: <input type="password" name="password" required /><br/>
        Role: 
        <select name="role">
            <option value="applicant">Applicant</option>
            <option value="recruiter">Recruiter</option>
        </select><br/>
        <button type="submit">Register</button>
    </form>
    </div>
</body>
</html>
