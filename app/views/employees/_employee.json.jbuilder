json.extract! employee, :id, :employeename, :employeecode, :employeedesg, :created_at, :updated_at
json.url employee_url(employee, format: :json)
