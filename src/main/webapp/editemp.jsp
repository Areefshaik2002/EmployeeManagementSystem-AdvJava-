<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String status=(String)request.getAttribute("status"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
</head>
<body bgcolor=" cyan">
	<center>
		<h1><font color='#00000'> Welcome to Employee Management System</font></h1>
		<h1><a href='addemp.jsp'>Add Employee</a></h1>
		<h1><a href='viewemp'>View All Employees</a></h1>
		<h1><a href='searchemp.jsp'>Search Employee</a></h1>
		<hr>
		<form action= 'edituser'>
			<table border='1'>
			<% if(status != null){ %>
			<tr>
				<td colspan = 2 align = 'center'><%= status %></td>
			</tr>
			<% } %>
				<tr>
					<td>ID</td>
					<td><input type='text' name='id' value = '<%= request.getParameter("id")%>'></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type='text' name='name' value = '<%= request.getParameter("name")%>'></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type='text' name='email' value = '<%= request.getParameter("email")%>'></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td>
					<input type='radio' name='gender' value='male'>Male
					<input type='radio' name='gender' value='female'>Female
					<input type='radio' name='gender' value='other'>Others
					</td>
				</tr>
				<tr>
					<td>Department</td>
					<td>
						<select name = 'department'>
							<option value='HR'>HR</option>
							<option value='SALES'>SALES</option>
							<option value='MARKETING'>MARKETING</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Salary</td>
					<td><input type='text' name='salary' value = '<%= request.getParameter("salary")%>'></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type='text' name='mobile' value = '<%= request.getParameter("mobile")%>'></td>
				</tr>
				<tr>
					<td>Address</td>
					<td>
						<textarea rows='10' cols='20' name='address'>value = '<%= request.getParameter("name")%>'</textarea>
					</td>
				</tr>
				<tr>
					<td><input  type='submit' value='update'></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>