<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
a,button{
	background-color: rgb(166, 218, 238);
	color: white;
	text-decoration: none;
	padding: 5px;
}
.heading {
	text-align: center;
	}
.container {
	width: fit-content;
	padding: 16px;
	background-color: white;
	margin: 0 auto;
	margin-top: 100px;
	border: 1px solid black;
	border-radius: 4px;
}
</style>
</head>
<body>
	

<div class="container">
    <h2 class="heading">Employee Details</h2>
	<button><a href="AddEmployee.jsp">Add Employee</a></button>
	<button><a href="DisplayAll?">DisplayAll</a></button>
	<button><a href="GetOneEmp.jsp">Find</a></button>
	<button><a href="Edit?">EDIT</a></button>
</div>
</body>
</html>