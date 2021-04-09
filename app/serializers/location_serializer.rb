class LocationSerializer < ActiveModel::Serializer
    attributes :id, :trip_id, :start_end, :street, :city, :county, :state, :zip_code, :lat, :long
end