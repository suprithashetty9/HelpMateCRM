class CreateTicketTranscations < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_transcations do |t|
      t.string :notes
      t.references :ticket_status, foreign_key: true
      t.references :ticket, foreign_key: true
      t.references :ticket_sub_status, foreign_key: true
      t.references :ticket_attachment, foreign_key: true

      t.timestamps
    end
  end
end
