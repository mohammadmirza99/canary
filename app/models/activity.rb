class Activity < ApplicationRecord
  belongs_to :location
  has_many :selections
end
