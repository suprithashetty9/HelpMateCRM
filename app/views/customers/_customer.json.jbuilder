json.extract! customer, :id, :name, :email, :mobilenumber, :address, :pincode, :age_id, :country_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
