class Ticket < ApplicationRecord
  
  belongs_to :caller_type
  belongs_to :ticket_type
  belongs_to :product
  belongs_to :ticket_status
  belongs_to :employee
  belongs_to :source
  belongs_to :customer
end
