class CreateTrays < ActiveRecord::Migration[7.1]
  def change
    create_table :trays do |t|
      t.references :green, null: false, foreign_key: true
      t.references :crop, null: false, foreign_key: true
      t.integer :weight
      t.integer :tray_number
      t.datetime :sown_at
      t.datetime :harvested_at

      t.timestamps
    end
  end
end
