class VehiclesController < ApplicationController

    def create
        vehicle = Vehicle.new(vehicle_params)

        if vehicle.save
            render json: { status: 'Success', vehicle: VehicleSerializer.new(vehicle) }
        else
            render json: { status: 'Failed', msg: vehicle.errors.full_messages}
        end
    end

    private

    def vehicle_params
        params.require(:vehicle).permit(:user_id, :make, :model, :year, :mileage)
    end
end
