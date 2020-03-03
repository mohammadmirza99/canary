class Activity < ApplicationRecord
  belongs_to :location
  has_many :pairs, dependent: :destroy
end
