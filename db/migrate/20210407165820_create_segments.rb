class CreateSegments < ActiveRecord::Migration[6.1]
  def change
    create_table :segments do |t|
      t.references :trip, null: false, foreign_key: true
      t.integer :index_num
      t.string :instructions
      t.string :icon_url
      t.float :distance
      t.integer :time
      t.string :direction
      t.integer :turn_type
      t.string :map_url
      t.float :start_lat
      t.float :start_long

      t.timestamps
    end
  end
end
