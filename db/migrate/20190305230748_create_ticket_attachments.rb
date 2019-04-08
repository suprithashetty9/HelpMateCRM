class CreateTicketAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_attachments do |t|
      t.string :ticketattachment

      t.timestamps
    end
  end
end
