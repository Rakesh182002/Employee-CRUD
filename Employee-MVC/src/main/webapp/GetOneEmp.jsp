<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER ID</title>
<style type="text/css">

.heading {
	text-align: center;
}

.container {
	width: 300px;
	padding: 16px;
	background-color: white;
	margin: 0 auto;
	margin-top: 100px;
	border: 1px solid black;
	border-radius: 4px;
}

input[type=text]{
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

input[type=submit] {
	background-color: #00802b;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

input[type=submit]:active {
	background-color: #00e64d;
}

</style>
</head>
<body>
	
	<div class="container">
		<h2 class="heading">EMPLOYEE BY ID</h2>
		<form action="DisplayEmpById">
		
			<label for="EmpId">ENTER YOUR ID:</label>
			<input id="EmpId" name="eid" placeholder="Enter Employee_Id" type="text" pattern="[0-9]{1,}" autocomplete="off" autofocus  />
			
			<input type="submit" value="Submit" id="button-1"/>
			
		</form>
	</div>
</body>
</html>