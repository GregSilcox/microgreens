class Order < ApplicationRecord
  STATES = ["cart", "paid", "fullfilled"].freeze

  belongs_to :user
  has_many :line_items

  validates :state, inclusion: { in: STATES }
end
