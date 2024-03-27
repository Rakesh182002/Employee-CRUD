<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add_User</title>
<style type="text/css">

.heading {
	text-align: center;
	}

.container {
	width: 300px;
	padding: 16px;
	background-color: white;
	margin: 0 auto;
	margin-top: 50px;
	border: 1px solid black;
	border-radius: 4px;
}

input[type=text],input[type=email],input[type=tel], input[type=number],select {
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
	width: 49%;
	margin: 0px -20px 0px 0px ;
}

input[type=submit]:active {
	background-color: #00e64d;
}
input[type=reset] {
	background-color: #f36565;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 49%;
}
input[type=reset]:active {
	background-color: #f32447;
}
</style>

</head>

<body>
<div class="container">
	<h2 class="heading"> ADD EMPLOYEE</h2>
	
	 <form action="add" method="post"  >
       
           <label for="ename">EMPLOYEE NAME</label>
           <input type="text" name="ename" id="ename" placeholder="Enter Employee Name" autocomplete="off" required autofocus>

           <label for="erole">EMPLOYEE ROLE</label>
           <select name="erole" id="erole" required>
           <option selected hidden >Select Role</option>

            <optgroup label="Manager">
                <option value="Marketing Manager"> Marketing Manager</option>
                <option value="Project Manager"> Project Manager</option>
                <option value="Finance Manager"> Finance Manager</option>
                <option value="Product Manager"> Product Manager</option>
            </optgroup>
        
            <optgroup label="Developer">
                <option value="React Developer"> React Developer</option>
                <option value="Java Developer"> Java Developer</option>
                <option value=".Net Developer"> .Net Developer</option>
                <option value="PHP Developer"> PHP Developer</option>
                <option value="Python Developer"> Python Developer</option>
            </optgroup>
        
            <optgroup label="Testing ">
                <option value="Manual Tesing">Manual Tesing</option>
                <option value="Automation Testing">Automation Testing</option>
            </optgroup>
        
          </select>
           
           <label for="etype">EMPLOYEE TYPE</label>
           <select  name="etype" id="etype" required>
            <option selected hidden >Select type</option>
            <option value="Full Time">Full Time</option>
            <option value="Part Time">Part Time</option>
           </select>
              
           <input type="reset" value="Reset">
           <input type="submit" value="submit">
           
        
    </form>
   

</div>
</body>
</html>