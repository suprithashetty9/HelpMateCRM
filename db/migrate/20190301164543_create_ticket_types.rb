class CreateTicketTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_types do |t|
      t.string :tickettype
      t.integer :createdby
      t.boolean :active

      t.timestamps
    end
  end
end
