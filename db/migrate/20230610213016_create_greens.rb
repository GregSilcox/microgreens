class CreateGreens < ActiveRecord::Migration[7.0]
  def change
    create_table :greens do |t|
      t.string :name
      t.text :description
      t.text :nutrition
      t.text :apperance
      t.text :flavor

      t.timestamps
    end
  end
end
