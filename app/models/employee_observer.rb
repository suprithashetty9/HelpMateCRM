class EmployeeObserver < ActiveRecord::Observer
    observe :employee
    
    def after_update(employee)
        
    if(employee.previous_changes.any?)
      
        EmployeesNotifierMailer.mailer().deliver
        
    end
    
    end
end