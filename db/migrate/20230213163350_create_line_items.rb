class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :state
      t.string :status
      t.datetime :delivered_at

      t.timestamps
    end
  end
end
