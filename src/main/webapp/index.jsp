<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.ContactsBean"%>
<%@page import="bo.ContactsBo"%>
<%@page import="java.util.ArrayList"%>
<!-- Khai báo sử dụng JSTL Core Tags -->


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% ArrayList<ContactsBean> dsloai= (ArrayList<ContactsBean>)request.getAttribute("dssach");%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Contact Listing</h2>
		<br>
		<br> <a href="AddPage" type="button"
			class="btn btn-primary float-right">Add Contact</a>
		<table class="table">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Birth Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="emp" items='${dssach}'>

					<tr class="table-dark text-dark">
						<td><a href='editPage?id=${emp.getId()}'>${emp.getFirstName()}</a></td>
						<td><p>${emp.getLastName()}</p></td>
						<td><p>${emp.getBirthDate()}</p></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
