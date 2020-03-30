<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">


	<h2>Edit Contact</h2>
  <br><br>
   <c:forEach var="emp" items='${dssach}'>
	<form action="EditController?id=${emp.getId()}" method="post">
  <div class="form-group row">
  <label for="example-text-input" class="col-2 col-form-label">First Name*</label>
  <div class="col-10">
    <input class="form-control" type="text" name="firstName" value="<c:out value="${emp.getFirstName()}"/>" id="example-text-input">
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-2 col-form-label">Last Name*</label>
  <div class="col-10">
    <input class="form-control" type="search" name="lastName" value="${emp.getLastName()}" id="example-search-input">
  </div>
</div>
 <div class="form-group row">
  <label for="example-datetime-local-input" class="col-2 col-form-label" >Date and time</label>
  <div class="col-10">
    <input class="form-control" type="date" name="birthDate" value="${emp.getBirthDate()}" id="example-datetime-local-input">
  </div>
</div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Description</label>
    <textarea class="form-control" name="description" value="${emp.getDescription()}" id="exampleFormControlTextarea1" rows="3">${emp.getDescription()}</textarea>
  </div>
  
  <input type="submit" name="edit" value="Edit" class="btn btn-success"> 
	<input type="submit" name="exit" value="Exit" class="btn btn-light"> 
</form>
</c:forEach>

</div>
</body>
</html>