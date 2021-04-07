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

user = User.create(first_name: 'David', last_name: 'Polcari', email: 'david@email.com', phone: '555-555-5555', password_digest: '123')

EmergencyContact.create(user_id: user.id, first_name: 'Emily', last_name: 'Polcari', email: 'emily@email.com', phone: '555-555-5555')

car = Vehicle.create(user_id: user.id, make: 'Mazda', model: 'CX-5', year: 2015, mileage: 70000)

MaintenanceReport.create(vehicle_id: car.id, description: 'Tires', notes: 'Rotation')
MaintenanceReport.create(vehicle_id: car.id, description: 'Oil Change', notes: 'Replaced oil')
MaintenanceReport.create(vehicle_id: car.id, description: 'Windshield Wipers', notes: 'Replaced wipers')