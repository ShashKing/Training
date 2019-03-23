<script>
        $("#submit").validate({
          rules:{
           "employee[first_name]" :{
              required:true,
              minlength:2,
              maxlength:30
          },
          "employee[last_name]" :{
              required:true,
              minlength:2,
              maxlength:30
          },
          "employee[employee_code]" :{
              required:true,
              number:true,
              minlength:2,
              maxlength:5
          },
          "employee[permanent_address]" :{
              required:true,
              minlength:2,
              maxlength:70
          },
          "employee[current_salary]" :{
              required:true,
              number :true,
              minlength:2,
              maxlength:30
          },
          "employee[email]" :{
              required:true,
              email:true,
              minlength:2,
              maxlength:50
          },
          "employee[addresses_attributes][0][ad_name]" :{
              required:true,
              minlength:2,
              maxlength:70
          },
          "employee[password]" :{
              required:true,
              minlength:6,
              maxlength:16
          },
          "employee[gender_id]":{
              required:true,
              
          },
          "employee[role_id]":{
              required:true,
              
          },
          "employee[designation_id]":{
              required:true,
              
          },
          "employee[department_id]":{
              required:true,
              
          },
          "employee[dob]":{
              required:true,
          }
         }
        });
      </script>