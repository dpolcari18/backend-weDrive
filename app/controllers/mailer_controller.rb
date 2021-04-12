class MailerController < ApplicationController
    def start_trip
        @user = current_user
        @emergency_contact = @user.emergency_contacts[0]
        @trip = Trip.find_by(id: params[:trip])
        @locations = @trip.locations
        @segments = @trip.segments

        TripDetailMailer.with(user: @user, ec: @emergency_contact, trip: @trip, locations: @locations, segments: @segments).start_trip_email.deliver_now
    end

    def end_trip
        @user = current_user
        @emergency_contact = @user.emergency_contacts[0]
        @trip = Trip.find_by(id: params[:trip])
        @locations = @trip.locations

        TripDetailMailer.with(user: @user, ec: @emergency_contact, trip: @trip, locations: @locations).end_trip_email.deliver_now
    end
end
