class TripDetailMailerPreview < ActionMailer::Preview
    def start_trip_email
        emergency_contact = EmergencyContact.new(email: 'email')
        user = User.new(first_name: 'david', last_name: 'polcari')
        trip = Trip.new(created_at: "2021-04-11T20:35:52.684Z", real_time: 12349)
        locations = [Location.new(start_end: 'Start', street: '1502 Hether St', city: 'Austin'), Location.new(start_end: 'End', street: '4319 Dos Cabezas Dr', city: 'Austin')]
        segments = [Segment.new(index_num: 1, icon_url: "http://content.mqcdn.com/mqsite/turnsigns/rs_merge_left_sm.gif", instructions: 'drive straight', distance: 4.135), Segment.new(index_num: 2, icon_url: "http://content.mqcdn.com/mqsite/turnsigns/rs_merge_left_sm.gif", instructions: 'turn left', distance: 42.456)]

        TripDetailMailer.with(user: user, trip: trip, locations: locations, segments: segments, ec: emergency_contact).start_trip_email
    end

    def end_trip_email
        emergency_contact = EmergencyContact.new(email: 'email')
        user = User.new(first_name: 'david', last_name: 'polcari')
        trip = Trip.new(created_at: "2021-04-11T20:35:52.684Z", real_time: 12349)
        locations = [Location.new(start_end: 'Start', street: '1502 Hether St', city: 'Austin'), Location.new(start_end: 'End', street: '4319 Dos Cabezas Dr', city: 'Austin')]
        segments = [Segment.new(index_num: 1, icon_url: "http://content.mqcdn.com/mqsite/turnsigns/rs_merge_left_sm.gif", instructions: 'drive straight', distance: 4.135), Segment.new(index_num: 2, icon_url: "http://content.mqcdn.com/mqsite/turnsigns/rs_merge_left_sm.gif", instructions: 'turn left', distance: 42.456)]

        TripDetailMailer.with(user: user, trip: trip, locations: locations, segments: segments, ec: emergency_contact).end_trip_email
    end
end