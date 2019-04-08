class TicketTranscation < ApplicationRecord
  belongs_to :ticket_status
  belongs_to :ticket
  belongs_to :ticket_sub_status
  belongs_to :ticket_attachment
end
