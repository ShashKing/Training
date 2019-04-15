jQuery(function($) {
 $("#login_form").validate({
     rules: {
       "#user_email": {
         required: true,
         email: true
         },
     "#user_password": {
        required:true
     }
   },
   messages :{
     "#user_email": {required: "Email can not be blank", email: "Please enter valid email"},
     "#user_password":  {required: "Password can not be blank"}
   },
 });
});