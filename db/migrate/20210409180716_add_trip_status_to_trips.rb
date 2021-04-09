class AddTripStatusToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :trip_status, :string, default: 'Saved'
  end
end
