class Itinerary < ApplicationRecord
  has_many :selections
  # belongs_to :user, through: :selections
end
