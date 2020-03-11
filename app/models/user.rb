class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :selections, dependent: :destroy
  has_many :activities, through: :selections
  has_many :itineraries, through: :selections

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
