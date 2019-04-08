class CreateTagUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_users do |t|
      t.string :tagusers

      t.timestamps
    end
  end
end
