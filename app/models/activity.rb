class Activity < ApplicationRecord
  belongs_to :location
  has_many :selections
  has_many :pairs, dependent: :destroy
  has_many :users, through: :selections

  #Added for geocoding addresses to coordinates
   geocoded_by :address
   # after_validation :geocode, if: :will_save_change_to_address?
end
