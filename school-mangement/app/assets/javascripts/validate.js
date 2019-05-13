$(document).ready(function(){
$("#login_form").validate({
	rules: {
		"user[email]":{
			required: true,
			email: true
		},
		"user[password]":{
			required: true
		}
	},
		messages: {
			"user[email]": {
				required: "*Email require here",
				email: "Email is not valid"
			},
			"user[password]":{
				required: "*Password require here"
			}
		}
	});
});