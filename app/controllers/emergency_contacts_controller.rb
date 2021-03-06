class EmergencyContactsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        emergency_contact = EmergencyContact.new(emergency_contact_params)

        if emergency_contact.save
            render json: { status: "Success" }
        else
            render json: { statue: 'Failed', msg: emergency_contact.errors.full_messages }
        end
    end

    def update
        emergency_contact = EmergencyContact.find_by(id: params[:id])
        emergency_contact.update(emergency_contact_params)

        render json: { status: 'Success'}
    end

    private

    def emergency_contact_params
        params.require(:emergency_contact).permit(:user_id, :first_name, :last_name, :email, :phone)
    end
end
