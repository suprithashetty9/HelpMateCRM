class Removecolumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :ticket_sub_type_id, :integer
    remove_column :tickets, :ticket_sub_status_id, :integer
  end
end
