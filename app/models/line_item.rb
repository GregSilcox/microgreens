class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  has_one :fulfillment
end
