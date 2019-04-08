class RemoveCreateddateFromTicketStatus < ActiveRecord::Migration[5.2]
  def change
    remove_column :ticket_statuses, :createddate, :date
  end
end
