class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :start_end
      t.string :street
      t.string :city
      t.string :county
      t.string :state
      t.string :zip_code
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
