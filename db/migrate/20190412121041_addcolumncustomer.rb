class Addcolumncustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers ,:height, :decimal
    add_column :customers, :weight, :decimal
  end
end
