class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :time
      t.integer :real_time
      t.float :distance
      t.boolean :has_tolls
      t.float :fuel_usage

      t.timestamps
    end
  end
end
