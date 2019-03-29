class EmployeeJob < ApplicationJob
  queue_as :default

  def perform(employee)
    # Do something later
    EmployeeMailer.signup_confirmation(employee).deliver
  end
end
