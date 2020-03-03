class Category < ApplicationRecord
  has_many :pairs, dependent: :destroy
end
