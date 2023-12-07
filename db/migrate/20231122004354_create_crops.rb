class CreateCrops < ActiveRecord::Migration[7.1]
  def change
    create_table :crops do |t|
      t.text :notes
      t.datetime :sown_at

      t.timestamps
    end
  end
end
