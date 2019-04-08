class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productdesc
      t.date :createddate
      t.integer :cratedby

      t.timestamps
    end
  end
end
