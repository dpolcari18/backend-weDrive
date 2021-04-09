class SegmentsController < ApplicationController

    def create
        segment = Segment.new(segment_params)
        if segment.save
            render json: { status: 'Success', segment: SegmentSerializer.new(segment) } 
        else
            render json: { status: 'Failed', msg: segment.errors.full_messages }
        end
    end

    private

    def segment_params
        params.require(:segment).permit(:trip_id, :index_num, :instructions, :icon_url, :distance, :time, :direction, :turn_type, :map_url, :start_lat, :start_long)
    end
end
