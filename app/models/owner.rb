class Owner < ApplicationRecord

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  has_many :pets
  has_many :appointments, through: :pets
  has_many :sitters, through: :pets

end
