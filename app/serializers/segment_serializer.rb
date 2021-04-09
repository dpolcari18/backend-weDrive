class SegmentSerializer < ActiveModel::Serializer
    attributes :id, :trip_id, :index_num, :instructions, :icon_url, :distance, :time, :direction, :turn_type, :map_url, :start_lat, :start_long
end