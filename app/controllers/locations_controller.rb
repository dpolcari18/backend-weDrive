class LocationsController < ApplicationController
    def create
        location = Location.new(location_params)
        if location.save
           render json: { status: 'Success', location: LocationSerializer.new(location) } 
        else
            render json: { status: 'Failed', msg: location.errors.full_messages }
        end
    end

    private

    def location_params
        params.require(:location).permit(:trip_id, :start_end, :street, :city, :county, :state, :zip_code, :lat, :long)
    end
end
