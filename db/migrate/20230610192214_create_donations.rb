class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.references :user, null: false, foreign_key: true

      # I should create a POR object for Amount methods
      t.decimal :amount, precision: 10, scale: 2, null: false
      t.datetime :donated_at
      t.string :kind

      t.timestamps
    end
  end
end
