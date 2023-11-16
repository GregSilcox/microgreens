class Product < ApplicationRecord
  validates :title, presence: true

  has_many :line_items
end
