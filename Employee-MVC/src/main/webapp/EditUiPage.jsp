<%@page import="com.jsp.Employee.Entity.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE DETAILS MVC</title>
<style type="text/css">
a{
text-decoration: none;
}
#blue{
color:blue;
background: none;
back
}
#red{
color:red;
background: none;
}



a,button{
    background: skyblue;
	color: white;
	text-decoration: none;
	padding: 5px;
    margin-top: 20px;
    margin-left: 10px;
    

}

table{
	align-content:center;
	width:98%;
	margin:7px;
	border:3px solid black;
	  border-collapse: collapse;
}
th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
    background-color: #FF5733; /* Set the background color for both headers and data cells */
    color: white;
}
td {
	text-align: center;
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
    background-color: gray; /* Set the background color for both headers and data cells */
    color: white;
}
.container{
	margin:10px;
	height:600px;
	background-color:lightgray;
}
</style>
</head>
<body>
	 <div class="container">
		
	<table id="table-1" >
		<thead>
			<tr>
				<th>EMPLOYEE ID</th>
				<th>EMPLOYEE NAME</th>
				<th>EMPLOYEE ROLE</th>
				<th>EMPLOYEE TYPE</th>
				<th>UPDATE</th>
				<th>DELETE</th>
			</tr>
		</thead>
		<tbody>
	<%List<Employee> userlist=(List<Employee>)request.getAttribute("EmployeeList"); 
	if(userlist!=null){
		
	for(Employee emp:userlist)
	{%>
	
		
			<tr>
				<td><%= emp.getEmpId() %></td>
				<td><%= emp.getEmpName() %></td>
				<td><%= emp.getEmpRole() %></td>
				<td><%= emp.getEmpType() %></td>
				<td><a href="Update?val=<%= emp.getEmpId() %>" id="blue" onclick="confirmUpdate(event)">UPDATE </a></td>
				<td><a href="Delete?eid=<%= emp.getEmpId() %>" id="red" onclick="confirmDelete(event)">DELETE </a></td>
				
			</tr>
		
	<%} } %>
	</tbody>
		
	</table> 
	<button><a href="hoome.jsp">Home</a></button>
	 </div>
	 
	  <script>
      function confirmDelete(event) {
          if (!confirm("Are you sure you want to delete this data?")) {
              event.preventDefault(); // Prevents the default action of the event (i.e., following the link)
          }
      }
      
      function confirmUpdate(event) {
          if (!confirm("Are you sure you want to Update this data?")) {
              event.preventDefault(); // Prevents the default action of the event (i.e., following the link)
          }
      }
  </script>

	

</body>
</html>