class CreateFulfillments < ActiveRecord::Migration[7.0]
  def change
    create_table :fulfillments do |t|
      t.datetime :fulfilled_at
      t.string :kind
      t.references :line_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
