class Trip < ApplicationRecord
  belongs_to :user
  has_many :segments, dependent: :destroy
  has_many :locations, dependent: :destroy
end
