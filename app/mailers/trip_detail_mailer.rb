class TripDetailMailer < ApplicationMailer
    def start_trip_email
        @emergency_contact = params[:ec]
        @user = params[:user]
        @trip = params[:trip]
        @locations = params[:locations]
        @segments = params[:segments]

        mail(to: @emergency_contact.email, subject: @user.first_name + ' started a trip on weDrive!')
    end

    def end_trip_email
        @emergency_contact = params[:ec]
        @user = params[:user]
        @trip = params[:trip]
        @locations = params[:locations]   

        mail(to: @emergency_contact.email, subject: @user.first_name + ' finished their trip on weDrive!')
    end
end
