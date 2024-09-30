<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String status=(String)request.getAttribute("status"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Employee</title>
</head>
<body bgcolor=" cyan">
	<center>
		<h1><font color='#00000'> Welcome to Employee Management System</font></h1>
		<h1><a href='addemp.jsp'>Add Employee</a></h1>
		<h1><a href='viewemp'>View All Employees</a></h1>
		<h1><a href='searchemp.jsp'>Search Employee</a></h1>
		<hr>
		<form action= 'searchemp'>
			<table border='1'>
			<% if(status != null){ %>
			<tr>
				<td colspan = 2 align = 'center'><%= status %></td>
			</tr>
			<% } %>
				<tr>
					<td>Id</td>
					<td><input type='text' name='id'></td>
				</tr>
				<tr>
					<td><input  type='submit' value='Search employee'></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>