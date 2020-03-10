class Selection < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  belongs_to :itinerary
end
