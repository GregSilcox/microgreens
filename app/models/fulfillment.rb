class Fulfillment < ApplicationRecord
  KINDS = ["Home", "OC Office", "East Church Fridge"]

  belongs_to :line_item
end
