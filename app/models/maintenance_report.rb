class MaintenanceReport < ApplicationRecord
  belongs_to :vehicle

  validates_presence_of :description, :notes
end
