class AddSkuToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :sku, :string
    add_column :tickets, :type, :string
    add_column :tickets, :cost, :string
  end
end
