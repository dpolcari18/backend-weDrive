class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :phone
  
    has_many :emergency_contacts
    has_many :trips
    has_many :locations, through: :trips
    has_many :vehicles
    has_many :maintenance_reports, through: :vehicles
  end