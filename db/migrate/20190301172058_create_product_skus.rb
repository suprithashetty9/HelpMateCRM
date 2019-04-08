class CreateProductSkus < ActiveRecord::Migration[5.2]
  def change
    create_table :product_skus do |t|
      t.string :productsku
      t.integer :createdby
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
