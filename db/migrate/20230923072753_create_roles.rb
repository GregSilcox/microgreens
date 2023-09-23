class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer :user_id
      t.integer :group_id
      t.string :kind

      t.timestamps
    end
  end
end
