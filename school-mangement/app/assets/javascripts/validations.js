jQuery(function($) {
 $("#login_form").validate({
     rules: {
       "user[email]": {
         required: true,
         email: true
         },
     "user[password]": {
        required:true
     }
   },
   messages :{
     "#user[email]": {required: "Email can not be blank", email: "Please enter valid email"},
     "#user[password]":  {required: "Password can not be blank"}
   },
 });
});