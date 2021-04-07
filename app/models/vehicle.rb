class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :maintenance_reports, dependent: :destroy

  validates_presence_of :make, :model, :year, :mileage
end
