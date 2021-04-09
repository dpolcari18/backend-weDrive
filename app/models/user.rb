class User < ApplicationRecord
    has_secure_password

    has_many :emergency_contacts, dependent: :destroy
    has_many :vehicles, dependent: :destroy
    has_many :trips, dependent: :destroy
    has_many :locations, through: :trips
    has_many :maintenance_reports, through: :vehicles

    validates_presence_of :first_name, :last_name, :email, :phone, :password_digest
    validates :email, uniqueness: true
end
