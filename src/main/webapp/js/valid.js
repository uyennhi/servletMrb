$(document).ready(function()
{
    $('#form_register').submit(function(){
 
        // BƯỚC 1: Lấy dữ liệu từ form
        var firstName    = $.trim($('#username').val());
        var lastName    = $.trim($('#password').val());
        var birthDate = $.trim($('#re_password').val());
        
 
        // BƯỚC 2: Validate dữ liệu
        // Biến cờ hiệu
        var flag = true;
 
        // Username
        if (username == '' || username.length < 4){
            $('#username_error').text('Tên đăng nhập phải lớn hơn 4 ký tự');
            flag = false;
        }
        else{
            $('#username_error').text('');
        }
 
        // Password
        if (password.length <= 0){
            $('#password_error').text('Bạn phải nhập mật khẩu');
            flag = false;
        }
        else{
            $('#password_error').text('');
        }
 
        // Re password
        if (password != re_password){
            $('#re_password_error').text('Mật khẩu nhập lại không đúng');
            flag = false;
        }
        else{
            $('#re_password_error').text('');
        }
 
        // Email
        if (!isEmail(email)){
            $('#email_error').text('Email không được để trống và phải đúng định dạng');
            flag = false;
        }
        else{
            $('#email_error').text('');
        }
 
        return flag;
    });
});