# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MaintenanceReport.destroy_all
Vehicle.destroy_all
EmergencyContact.destroy_all
User.destroy_all

user = User.create(first_name: 'David', last_name: 'Polcari', email: 'david@email.com', phone: '555-555-5555', password: '123')

EmergencyContact.create(user_id: user.id, first_name: 'Emily', last_name: 'Polcari', email: 'emily@email.com', phone: '555-555-5555')

car = Vehicle.create(user_id: user.id, make: 'Mazda', model: 'CX-5', year: 2015, mileage: 70000)

MaintenanceReport.create(vehicle_id: car.id, description: 'Tires', notes: 'Rotation')
MaintenanceReport.create(vehicle_id: car.id, description: 'Oil Change', notes: 'Replaced oil')
MaintenanceReport.create(vehicle_id: car.id, description: 'Windshield Wipers', notes: 'Replaced wipers')

trip = Trip.create(user_id: user.id, time: 10200, real_time: 10983, distance: 195.498, has_tolls: false, fuel_usage: 10.02)

location1 = Location.create(trip_id: trip.id, start_end: 'start', street: '', city: 'Austin', county: 'Travis County', state: 'TX', zip_code: '', long: -97.746598, lat: 30.264979)
location2 = Location.create(trip_id: trip.id, start_end: 'end', street: '', city: 'Dallas', county: 'Dallas County', state: 'TX', zip_code: '', long: -96.796215, lat: 32.777977)

segment1 = Segment.create(trip_id: trip.id, index_num: 0, instructions: 'Start out going east on W 2Nd St toward Colorado St.', icon_url: 'http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-start_sm.gif', distance: 0.067, time: 11, direction: 'East', turn_type: 0, map_url: 'http://www.mapquestapi.com/staticmap/v5/map?key=jGOGNEMHEi4MNjU7LSSVTTYOoozrHXRW&size=225,160&locations=30.264978408813477,-97.74659729003906|marker-1||30.264677047729492,-97.74552917480469|marker-2||&center=30.264827728271484,-97.74606323242188&defaultMarker=none&zoom=15&rand=1833180008&session=606de578-02da-6750-02b4-34a9-123d26405d5b', start_lat: 30.264978, start_long: -97.746597)


