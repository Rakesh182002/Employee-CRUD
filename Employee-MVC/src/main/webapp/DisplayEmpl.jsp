<%@page import="com.jsp.Employee.Entity.Employee"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Id</title>
<style type="text/css">
a,button{
    background: skyblue;
	color: white;
	text-decoration: none;
	padding: 5px;
    margin-top: 20px;

}
td{
text-align: center;
padding :10px;
}

</style>

</head>
<body>
	<table id="table-1" border="2px">
	<thead>
	<tr>
		<th>EMPLOYEE ID</th>
		<th>EMPLOYEE NAME</th>
        <th>EMPLOYEE ROLE</th>
        <th>EMPLOYEE TYPE</th>
	</tr>
	</thead>
		<tbody>
	<%List<Employee> empList=(List<Employee>)request.getAttribute("Employee"); 
	if(empList!=null){
		
	for(Employee emp:empList)
	{%>
			<tr>
				<td><%= emp.getEmpId()   %></td>
				<td><%= emp.getEmpName() %></td>
				<td><%= emp.getEmpRole() %></td>
				<td><%= emp.getEmpType() %></td>
			</tr>

	<%} } %>
	</tbody>
		
	</table> 
	<button><a href="hoome.jsp">HOME</a></button>
	<button><a href="Edit?">EDIT</a></button>
	
	
	
</body>
</html>