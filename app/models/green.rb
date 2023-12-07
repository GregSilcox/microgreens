class Green < ApplicationRecord
  has_many :trays
  has_many :crops, through: :trays
end
