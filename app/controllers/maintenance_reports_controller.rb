class MaintenanceReportsController < ApplicationController

    def create
        maintenance_report = MaintenanceReport.new(maintenance_report_params)

        if maintenance_report.save
            render json: { status: 'Succes', maintenance_report: MaintenanceReportSerializer.new(maintenance_report)}
        else
            render json: { status: 'Failed', msg: maintenance_report.errors.full_messages}
        end
    end

    private

    def maintenance_report_params
        params.require(:maintenance_report).permit(:vehicle_id, :description, :notes, :mileage)
    end 
end
