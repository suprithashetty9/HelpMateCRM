class Changetickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets,:product_sku_id,:integer
    remove_column :tickets,:tag_user_id, :integer
    remove_column :tickets, :ticket_attachment_id, :integer
    
    drop_table :product_skus
    drop_table :tag_users
    drop_table :ticket_attachments
    drop_table :ticket_sub_statuses
    drop_table :ticket_sub_types
    drop_table :ticket_transcations
  end
end
