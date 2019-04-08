class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :caller_type, foreign_key: true
      t.references :ticket_type, foreign_key: true
      t.references :product, foreign_key: true
      t.datetime :manufacturedate
      t.datetime :expirydate
      t.string :batchnumber
      t.string :purchasepoint
      t.string :description
      t.string :resolution
      t.references :customer, foreign_key: true
      t.references :ticket_status, foreign_key: true
      t.references :source, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
