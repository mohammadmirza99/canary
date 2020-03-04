class Activity < ApplicationRecord
  belongs_to :location
  has_many :selections
  has_many :pairs, dependent: :destroy
end
