class VehicleSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :make, :model, :year, :mileage, :created_at, :updated_at
end