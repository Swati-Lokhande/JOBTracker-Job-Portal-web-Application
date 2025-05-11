<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>

<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
	box-sizing: border-box;
}
.main-container {
	
	text-align: center;
}
.navbar {
	font-weight: bolder;
	font-size: 25px;
}
.navbar-brand {
	font-size: 40px;
	font-family: Arial Black;
}
.job {
	color: blue;
	font-size: 50px;
	-webkit-text-stroke: 0.5px orange;
	font-style: italic;
}
.tracker {
	color: orange;
	font-size: 30px;
	font-style: italic;
	text-decoration: overline;
}
.nav-link {
	text-decoration: underline;
}
.heading {
	color: blue;
}

</style>
</head>
<body>
<div class="main-container">

    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#"><span class="job">JOB</span><span class="tracker">Tracker</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
		data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
		aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="login.jsp">Login</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="register.jsp">Register</a>
            </li>
          </ul>
        </div>
    </nav>
    <!-- nav ends here  -->

</div>
</body>
</html>
