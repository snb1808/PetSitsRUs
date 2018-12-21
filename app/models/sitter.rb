class Sitter < ApplicationRecord

  has_many :appointments
  has_many :pets, through: :appointments
  has_many :owners, through: :appointments

end
