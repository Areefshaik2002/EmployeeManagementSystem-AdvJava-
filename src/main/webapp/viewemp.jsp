<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body bgcolor=" cyan">
	<center>
		<h1><font color='#00000'> Welcome to Employee Management System</font></h1>
		<h1><a href='addemp.jsp'>Add Employee</a></h1>
		<h1><a href='viewemp'>View All Employees</a></h1>
		<h1><a href='searchemp.jsp'>Search Employee</a></h1>
		<hr>
		<table border = '1' bgcolor = "white" >
		<tr >
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Gender</th>
		<th>Department</th>
		<th>salary</th>
		<th>Mobile</th>
		<th>Address</th>
		<th>Edit</th>
		<th>Delete</th>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
				<td><c:out value="${employee.id}"></c:out></td>
				<td><c:out value="${employee.name}"></c:out></td>
				<td><c:out value="${employee.email}"></c:out></td>
				<td><c:out value="${employee.gender}"></c:out></td>
				<td><c:out value="${employee.dept}"></c:out></td>
				<td><c:out value="${employee.salary}"></c:out></td>
				<td><c:out value="${employee.mobile}"></c:out></td>
				<td><c:out value="${employee.address}"></c:out></td>
				<td><a href = 'editemp.jsp?id=${employee.id}&name=${employee.name}&email=${employee.email}&dept=${employee.dept}&salary=${employee.salary}&mobile=${employee.mobile}&address=${employee.address}'>Edit</a></td>
				<td><a href = 'deleteuser?id=${employee.id}'>Delete</a></td>
				<td></td>
			</tr>
		</c:forEach>
		</table>
	</center>
</body>