class AddMileageToMaintenanceReport < ActiveRecord::Migration[6.1]
  def change
    add_column :maintenance_reports, :mileage, :integer
  end
end
