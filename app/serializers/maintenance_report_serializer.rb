class MaintenanceReportSerializer < ActiveModel::Serializer
    attributes :id, :vehicle_id, :description, :notes, :mileage, :created_at, :updated_at
end