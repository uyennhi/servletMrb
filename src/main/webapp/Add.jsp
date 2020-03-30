<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<a href='AddController?exit=exit'type="submit" name="exit" value="Exit" class="btn btn-light float-right">Exit </a>

<%
	if(request.getAttribute("ktma") != null){%>
	
	<script type="text/javascript">alert(" ${ktma} ");</script>
	<% }
	
	
	%>
	<h2>Add Contact</h2>
  <br><br>
  
	<form action="AddController" method="post" id="form_register">
  <div class="form-group row">
  <label for="example-text-input" class="col-2 col-form-label">First Name*</label>
  <div class="col-10">
    <input class="form-control" type="text" name="firstName" value="Artisanal kale" id="firstname">
    <span id="firstname_error" style="color:red;"></span>
    
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-2 col-form-label">Last Name*</label>
  <div class="col-10">
    <input class="form-control" type="search" name="lastName" value="How do I shoot web" id="lastname">
    <span id="lastname_error" style="color:red;"></span>
  </div>
</div>
 <div class="form-group row">
  <label for="example-datetime-local-input" class="col-2 col-form-label">Date and time</label>
  <div class="col-10">
    <input class="form-control" type="date" name="birthDate" value="2011-08-19" id="date">
    <span id="day_error" style="color:red;"></span>
  </div>
</div>
  <div class="form-group" >
    <label for="exampleFormControlTextarea1">Description</label>
    <textarea class="form-control" name="description" id="description" rows="3"></textarea>
    <span id="description_error" style="color:red;"></span>
  </div>
  
  <input type="submit" id="register" name="add" value="Add" class="btn btn-success"> 
	 
</form>
	
</div>
</body>

 <script language="javascript">
            $(document).ready(function(){
                $('#form_register').submit(function(){
                     
                    // Code validate form
                	var firstname  = $.trim($('#firstname').val());
                    var lastname  = $.trim($('#lastname').val());
                    var date = $.trim($('#date').val());
                    var description  = $.trim($('#description').val());
                    
                    
                   
                    var flag = true;
                    // check firstName
                    if (firstname == ''  ){
                        $('#firstname_error').text('Tên không được rỗng.');
                        flag = false;
                    }else if(firstname.length < 2){
                    	$('#firstname_error').text('Tên không được bé hơn 2 kí tự.');
                    	flag = false;
                    }else if(/^[a-zA-Z0-9- ]*$/.test(firstname) == false) {
	                   	 $('#firstname_error').text('Tên không chứa kí tự đặc biệt.');
	                     flag = false;
                	}
                    else{
                        $('#firstname_error').text('');
                    }
                    
                    //check LastName
                    
                    if (lastname == ''  ){
                        $('#lastname_error').text('Tên không được rỗng.');
                        flag = false;
                    }else if(lastname.length < 2){
                    	$('#lastname_error').text('Tên không được bé hơn 2 kí tự.');
                    	flag = false;
                    }else if(/^[a-zA-Z0-9- ]*$/.test(lastname) == false) {
	                   	 $('#lastname_error').text('Tên không chứa kí tự đặc biệt.');
	                     flag = false;
                	}
                    else{
                        $('#lastname_error').text('');
                    }
                    
                    
                    //check date
                    var CurrentDate = new Date();
                    var SelectedDate = new Date($('#date').val()
                    );

                    //As quite rightly mentioned, January = 0, so if your inputs have the literal number for each month (1 for January) replace the line above with the following, to take a month off:
                    //var SelectedDate = new Date($('[id$=txtYear]').val(), $('[id$=drpMonth]').val()-1, $('[id$=spDate]').val());

                    if(CurrentDate < SelectedDate){
                        //CurrentDate is more than SelectedDate
                    	 $('#day_error').text('Ngày lớn hơn ngày hiện tại');
	                     flag = false;
                    }
                    
                    
                    
                    
                    
                    return flag;
                });
            });
        </script>
</html>