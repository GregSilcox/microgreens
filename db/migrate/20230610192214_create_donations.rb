class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.datetime :donated_at
      t.string :kind

      t.timestamps
    end
  end
end
