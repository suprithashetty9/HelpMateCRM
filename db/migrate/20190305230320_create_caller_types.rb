class CreateCallerTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :caller_types do |t|
      t.string :callertype

      t.timestamps
    end
  end
end
