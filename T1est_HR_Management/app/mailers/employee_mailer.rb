class EmployeeMailer < ApplicationMailer
	default from: "dngrsshashank@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.employee_mailer.signup_confirmation.subject
  #
  def signup_confirmation(employee)
    @employee = employee
    mail to: employee.email , subject: "Sign Up Confirmation"
  end
end
