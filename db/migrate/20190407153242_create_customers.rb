class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :mobilenumber
      t.string :address
      t.string :pincode
      t.references :age, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
