json.extract! ticket, :id, :caller_type_id, :ticket_type_id, :product_id, :manufacturedate, :expirydate, :batchnumber, :purchasepoint, :description, :resolution, :customer_id, :ticket_status_id, :source_id, :employee_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
