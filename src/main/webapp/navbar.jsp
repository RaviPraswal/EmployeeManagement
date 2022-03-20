<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <link rel="stylesheet" href="style.css"> -->
<title>Index</title>
</head>

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background:linear-gradient(to right, #78a7ba 0%, #385D6C 50%, #78a7ba 99%);
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #ff80ff;
  color: black;
}

.navbar a.active {
  background-color: #a450af;
  color: white;
}
</style>

<body>
<div class="navbar">
  <a class="active" href="#home">Home</a>
  <a href="addEmployee.jsp">Register Employee</a>
  <a href="viewEmp.do">View All Employees</a>
  <a href="profileCard.jsp">Profile Card</a>
  <a href="about.jsp">About</a>
</div>
</body>
</html>


