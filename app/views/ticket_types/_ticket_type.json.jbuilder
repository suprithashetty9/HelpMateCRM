json.extract! ticket_type, :id, :tickettype, :createdby, :active, :created_at, :updated_at
json.url ticket_type_url(ticket_type, format: :json)
