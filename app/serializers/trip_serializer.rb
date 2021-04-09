class TripSerializer < ActiveModel::Serializer
    attributes :id, :time, :real_time, :distance, :has_tolls, :fuel_usage, :created_at
  
    has_many :locations
    has_many :segments
  end