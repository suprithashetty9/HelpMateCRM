class CreateTicketStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_statuses do |t|
      t.string :status
      t.date :createddate

      t.timestamps
    end
  end
end
