json.extract! ticket_transcation, :id, :notes, :ticket_status_id, :ticket_id, :ticket_sub_status_id, :ticket_attachment_id, :created_at, :updated_at
json.url ticket_transcation_url(ticket_transcation, format: :json)
