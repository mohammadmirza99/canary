class Itinerary < ApplicationRecord
  has_many :selections
  # belongs_to :user, through: :selections

  validates :start_date, presence: true
  validates :end_date, presence: true
end
