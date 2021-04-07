class CreateMaintenanceReports < ActiveRecord::Migration[6.1]
  def change
    create_table :maintenance_reports do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.string :description
      t.string :notes

      t.timestamps
    end
  end
end
