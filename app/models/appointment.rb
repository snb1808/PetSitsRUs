class Appointment < ApplicationRecord

  belongs_to :sitter
  belongs_to :pet

end
