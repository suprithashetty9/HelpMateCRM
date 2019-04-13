class EmployeesNotifierMailer < ApplicationMailer
    def mailer
        @mailId = "saimalla7@gmail.com"
        mail(to: @mailId, subject: "New Employee Created")
    end
end