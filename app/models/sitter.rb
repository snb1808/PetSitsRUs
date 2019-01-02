class Sitter < ApplicationRecord

  has_many :appointments
  has_many :pets, through: :appointments
  has_many :owners, through: :appointments

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
