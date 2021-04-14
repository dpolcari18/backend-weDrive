class AddMapUrlToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :map_url, :string
  end
end
