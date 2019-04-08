class ChangeDbColumnNames < ActiveRecord::Migration[5.2]
  def change
     rename_column :ticket_sub_statuses, :creatredby, :created_by
  end
end
