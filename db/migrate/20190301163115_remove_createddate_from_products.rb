class RemoveCreateddateFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :createddate, :date
  end
end
