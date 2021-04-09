require 'rest-client'

class TripsController < ApplicationController

    def create
        trip = Trip.new(trip_params)
        
        if trip.save
            render json: { status: 'Success', trip: TripSerializer.new(trip)}
        else
            render json: {status: 'Failed', msg: trip.errors.full_messages}
        end
    end

    def fetch
        route_res = get_route(params[:origin], params[:destination])
        render json: {route: route_res}
    end

    private

    def get_route(origin, destination)
        key = ENV['APIKEY']
        url = "http://www.mapquestapi.com/directions/v2/route?key=#{key}&from=#{origin}&to=#{destination}"
        
        trip_res = RestClient.get(url)

        return trip_res.body
    end

    def trip_params
        params.require(:trip).permit(:user_id, :time, :real_time, :distance, :has_tolls, :fuel_usage)
    end
end
